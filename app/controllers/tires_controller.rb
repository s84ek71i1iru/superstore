class TiresController < ApplicationController

  before_action :find_tire, only:[:create, :edit, :update, :dectroy]

  def index
    @tires = Tire.all
  end

  def new
    @tire = Tire.new
  end

  def create
    @tire = Tire.new(clean_data)
    if @tire.save
      flash[:notice] = 'Create tire successfully'
      redirect_to tires_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def clean_data
      params.require(:tire).permit(:name, :brand_id, :spec, :description, :price, :start_date, :end_date)
    end

    def find_tire
      @tire = Tire.find_by(id: params[:id])
    end
end
