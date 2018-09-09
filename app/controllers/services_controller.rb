class ServicesController < ApplicationController
  before_action :find_service, only: [:show, :update, :edit, :destroy]

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    if @service.save
      redirect_to services_path
    else
      render :new
    end 
  end

  def index
    @services = Service.all
  end

  def show
  end

  def edit
  end

  def update
  end

  private

  def find_service
    @service = Service.find(params[:id])
  end

  def service_params
    params.require(:service).permit(:category, :title, :description, :price)
  end

end
