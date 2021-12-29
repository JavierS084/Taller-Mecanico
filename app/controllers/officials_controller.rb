class OfficialsController < ApplicationController
  def index
    if params['search'].blank?
      @official_list=Official.joins(:position).all.order(first_name: :asc)
    else
      @official_list=Official.joins(:position).where("officials.first_name like ? or
 positions.description like?", "%#{params['search']}%" ,"%#{params['search']}%")
    end
    end

  def new
    @official=Official.new
    @posiciones=Position.all.order(description: :asc)
  end

  def create
    new_official=Official.new(official_parameter)
    if new_official.save!
      redirect_to official_list_path
    else
      puts "no se guardo"
    end
  end

  def edit
    @official=Official.find(params[:id])
    @posiciones=Position.all.order(description: :asc)
  end

  def update
    @official=Official.find(params[:id])
    if@official.update!(official_parameter)
      redirect_to official_list_path
    else
      redirect_to edit
    end
  end

  def show
    @official=Official.find(params[:id])
  end

  private
  def official_parameter
    params.require(:official).permit(:first_name, :last_name,:document_number, :phone, :position_id)
  end
  end
