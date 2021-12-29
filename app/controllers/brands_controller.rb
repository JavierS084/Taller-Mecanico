class BrandsController < ApplicationController
  def index
    if params['search'].blank?
    @brand_list=Brand.all.order(description: :asc)
    else
    @brand_list=Brand.where("brands.description like ?", "%#{params['search']}")
      end
  end

  def new
    @brand=Brand.new
  end

  def create
    new_brand=Brand.new(brand_parameter)

    if new_brand.save!
      redirect_to brand_list_path
    else
      puts"no se guardo"
    end
  end

  def show
    @brand=Brand.find(params[:id])
  end

  def edit
    @brand=Brand.find(params[:id])
  end

  def update
    @brand=Brand.find(params[:id])
    if@brand.update!(brand_parameter)
      redirect_to brand_list_path
    else
      redirect_to edit
    end
  end


  private
  def brand_parameter
    params.require(:brand).permit(:description)
  end
end

