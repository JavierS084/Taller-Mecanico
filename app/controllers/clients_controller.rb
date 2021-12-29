class ClientsController < ApplicationController
  def index
    if params['search'].blank?
    @client_list=Client.all.order(first_name: :asc)
    else
      @client_list=Client.where("clients.first_name like ? or clients.last_name  like ? ",
                                "%#{params['search']}%","%#{params['search']}%")
      end
  end

  def new
    @client=Client.new
  end

  def create
    new_client=Client.new(client_parameter)
    if new_client.save!
      redirect_to client_list_path
    else
      puts"no se guardo"
    end
  end

  def edit
    @client=Client.find(params[:id])
  end

  def update
    @client=Client.find(params[:id])
    if@client.update!(client_parameter)
      redirect_to client_list_path
    else
      redirect_to edit
    end
  end

  def show
    @client=Client.find(params[:id])
  end

  private
  def client_parameter
    params.require(:client).permit( :first_name, :last_name,:document, :phone)
  end


  end