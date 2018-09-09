class StylistsController < ApplicationController

  def new
  end

  def create
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def stylists_params
    params.require(:stylist).permit(:name, :bio)
  end 
end
