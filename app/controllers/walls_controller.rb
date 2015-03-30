class WallsController < ApplicationController

  before_action :set_data, only: [:update, :edit, :destroy]

  def index
    @walls = Wall.all
  end

  def update
  end

  def edit
  end

  def new
    @wall = Wall.new
  end

  def create
  end

  def destroy
    if @wall.destroy
      flash[:notice] = 'Destroy successfuly'
    else
      flash[:notice] = 'Destroy error'
    end
    redirect_to walls_path
  end

  private
    def set_data
      @wall = Wall.find_by( id: params[:id])
    end

    def clean_data
    end
end
