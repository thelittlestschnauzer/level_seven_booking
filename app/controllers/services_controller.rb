class ServicesController < ApplicationController

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    @service.save
    redirect_to services_path
  end

  def index
    @services = Service.all 
  end

  private

  def service_params
    params.require(:service).permit(:name, :description, :category, :price, :duration)
  end

end
