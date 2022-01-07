class VehiclesController < ApplicationController
  def index
     if params['search'].blank?
    @vehicle_list=Vehicle.joins(:client,:colour,:model_vehicle).all
     else
       @vehicle_list=Vehicle.joins(:client,:colour,:model_vehicle).where("clients.first_name like ? or
                                    model_vehicles.description like ?","%#{params['search']}%", "%#{params['search']}%")
     end
  end

  def new
    @vehicle=Vehicle.new
    @lista_brands=Brand.all.order(:description)
    @lista_clients=Client.all.order(:first_name)
    @lista_model_vehicles=ModelVehicle.order(:description)
    @lista_colours=Colour.order(:description)
  end

  def create
    new_vehicles=Vehicle.new(vehicle_parameter)
    if new_vehicles.save!
      redirect_to vehicle_list_path
    else
      puts"no se guardo"
    end
  end

  def edit
     @vehicle=Vehicle.find(params[:id])
     @lista_brands=Brand.all.order(:description)
     @lista_clients=Client.all.order(:first_name)
     @lista_model_vehicles=ModelVehicle.order(:description)
     @lista_colours=Colour.order(:description)
  end

  def update
    @vehicle=Vehicle.find(params[:id])
    if@vehicle.update!(vehicle_parameter)
      redirect_to vehicle_list_path
    else
      redirect_to edit
    end
  end

  def show
    @vehicle=Vehicle.find(params[:id])
  end

  private
  def vehicle_parameter
    params.require(:vehicle).permit(:colour_id, :client_id,:brand_id,:model_vehicle_id,:vehicle_id)

  end
end
