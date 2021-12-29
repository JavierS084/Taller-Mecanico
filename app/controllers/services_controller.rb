class ServicesController < ApplicationController
  def index
    if params['search'].blank?
    @service_list=Service.joins(:service_type).all.order(description: :asc)
    else
      @service_list=Service.joins(:service_type).where("services.description like ? or service_types.description like ?",
                                                       "%#{params['search']}%","%#{params['search']}%")
    end
    end

  def new
    @tipo_servicio=ServiceType.all.order(description: :asc)
    @service=Service.new
  end

  def create
    new_service=Service.new(service_parameter)
    if new_service.save!
      redirect_to service_list_path
    else
      redirect_to new
    end
  end

  def edit
    @service=Service.find(params[:id])
    @tipo_servicio=ServiceType.all.order(:description)
  end



  def update
    @service=Service.find(params[:id])
    if@service.update!(service_parameter)
      redirect_to service_list_path
    else
      redirect_to edit
    end
  end


  def show
    @service=Service.find(params[:id])
  end



  private
  def service_parameter
    params.require(:service).permit(:description, :price, :service_type_id)
  end

end
