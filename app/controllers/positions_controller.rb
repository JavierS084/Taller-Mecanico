class PositionsController < ApplicationController
  def index
    if params[:search].blank?
    @position_list=Position.all.order(description: :asc)
    else
    @position_list=Position.where("positions.description like ?", "%#{params['search']}%")
    end
    end

  def new
    @position=Position.new
  end

  def create
    new_position=Position.new(position_parameter)
    if new_position.save!
      redirect_to position_list_path
    else
      puts"no se guardo"
    end
  end

  def edit
    @position=Position.find(params[:id])
  end

  def update
    @position=Position.find(params[:id])
    if@position.update!(position_parameter)
      redirect_to position_list_path
    else
      redirect_to edit

    end
  end

  def show
    @position=Position.find(params[:id])
  end

  private
  def position_parameter
    params.require(:position).permit(:description)
  end

end

