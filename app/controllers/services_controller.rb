class ServicesController < ApplicationController
  before_action :find_service, only: [:show, :edit, :update, :destroy]

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    @service.save
    redirect_to services_path
  end

  def index
    @services = Service.all.order("created_at DESC")
  end

  def show
  end

  def edit
  end

  def update
    if @service.update(service_params)
      redirect_to services_path(@service)
    else
      render 'edit'
    end
  end

  def destroy
    @service.destroy
    redirect_to @service
  end


  private

  def find_service
    @service = Service.find(params[:id])
  end

  def service_params
    params.require(:service).permit(:name, :description, :category, :price, :duration)
  end

end
