class WorkOrdersController < ApplicationController
  def index
    @order_list=WorkOrder.all
  end

  def new
    @work_order=WorkOrder.new

  end

  def create
  new_order=WorkOrder.new(order_parameter)
    if new_order.save!
      redirect_to order_list_path
    else
      puts"no se guardo"
    end
  end

  def edit
  @work_order=WorkOrder.find(params[:id])

  end

  def update
    @work_order=WorkOrder.find(params[:id])
    if @work_order.update!(order_parameter)
      redirect_to order_list_path
    else
      redirect_to edit
    end
  end

  def show
    @work_order=WorkOrder.find(params[:id])
  end

  private
  def order_parameter
  params.require(WorkOrder).permit()
  end

end
