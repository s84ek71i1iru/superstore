class BrandsController < ApplicationController

  before_action :find_brand, only:[:edit, :update, :destroy]

  def index
    @brands = Brand.all
  end

  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.new(clean_data)
    if @brand.save
      flash[:notice] = 'Create brand successfully'
      redirect_to brands_path
    else
      render :new
    end

  end

  def destroy
    if @brand.destroy
      flash[:notice] = 'Delete successfully'
    else
      flash[:notice] = 'Delete error'
    end
    redirect_to brands_path
  end

  def edit
  end

  def update
    if @brand.update(clean_data)
      flash[:notice] = 'Update successfully'
      redirect_to brands_path
    else
      render :edit
    end
  end

  private
    def clean_data
      params.require(:brand).permit(:name, :description, :website)
    end

    def find_brand
      @brand = Brand.find_by(id: params[:id])
    end
end
