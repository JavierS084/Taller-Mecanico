class ColoursController < ApplicationController
  def index
    if params['search'].blank?
    @colour_list=Colour.all.order(description: :asc)
    else
    @colour_list=Colour.where("colours.description like ?", "%#{params['search']}")
      end
  end

  def new
    @colour=Colour.new
  end

  def create
    new_colour=Colour.new(colour_parameter)
    if new_colour.save!
      redirect_to colour_list_path
    else
      puts"no se guardo"
    end

  end

  def edit
    @colour=Colour.find(params[:id])
  end

  def update
    @colour=Colour.find(params[:id])
    if@colour.update!(colour_parameter)
      redirect_to colour_list_path
    else
      redirect_to edit
    end
  end

  def show
    @colour=Colour.find(params[:id])
  end

  private
  def colour_parameter
    params.require(:colour).permit(:description)
  end
  end

