class ServiceTypesController < ApplicationController
  def index
    if params['search'].blank?
    @serviceT_list = ServiceType.all.order(description: :asc)
    else
      @serviceT_list = ServiceType.where("service_types.description like ?", "%#{params['search']}%")
      end
  end

  def new
    @service_type=ServiceType.new
  end

  def create
    new_service_type=ServiceType.new(service_type_parameter)
    if new_service_type.save!
      redirect_to serviceT_list_path
    else
      puts"no se guardo"
    end
  end

  def edit
    @service_type=ServiceType.find(params[:id])
  end

  def update
    @service_type=ServiceType.find(params[:id])
    if @service_type.update!(service_type_parameter)
      redirect_to serviceT_list_path
    else
      redirect_to edit

    end
  end

  def show
    @service_type=ServiceType.find(params[:id])

  end

  private
  def service_type_parameter
    params.require(:service_type).permit(:description)
  end
  end



