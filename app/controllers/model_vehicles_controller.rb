class ModelVehiclesController < ApplicationController
  def index
    if params['search'].blank?
    @model_list=ModelVehicle.joins(:brand).all.order(description: :asc)
    else
      @model_list=ModelVehicle.joins(:brand).where("model_vehicles.description like ? or brands.description like ?",
                                                   "%#{params['search']}%","%#{params['search']}%" )
      end
  end

  def new
    @model_vehicle=ModelVehicle.new
    @lista_brand=Brand.all.order(description: :asc)
  end

  def create
    new_model_vehicle=ModelVehicle.new(model_vehicle_parameter)
    if new_model_vehicle.save!
      redirect_to model_list_path
    else
      puts"no se guardo"
    end
  end

  def edit
    @model_vehicle=ModelVehicle.find(params[:id])
    @lista_brand=Brand.all.order(description: :asc)
  end

  def update
    @model_vehicle=ModelVehicle.find(params[:id])
    if@model_vehicle.update!(model_vehicle_parameter)
      redirect_to model_list_path
    else
      redirect_to edit
    end

  end

  def show
    @model_vehicle=ModelVehicle.find(params[:id])
  end

  
  private
  def model_vehicle_parameter
    params.require(:model_vehicle).permit(:description, :brand_id)
  end

  end

