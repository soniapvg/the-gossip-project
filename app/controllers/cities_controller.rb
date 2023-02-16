class CitiesController < ApplicationController
  before_action :set_city, only: [:show, :edit, :update, :destroy]

  def index
    @cities = City.all
  end

  def show
  end

  def new
    @city = City.new
  end

  def create
    @city = City.new(
      city_params(
        :name,
        :zip_code
      )
    )

    if @city.save
      redirect_to cities_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @city.set_attribute(
      city_params(
        :name,
        :zip_code
      )
    )

    if @city.save
      redirect_to cities_path
    else
      render 'edit'
    end
  end

  def destroy
    @city.destroy
    redirect_to cities_path
  end

  private

  def city_params(*args)
    params.require(:city).permit(*args)
  end

  def set_city
    @city = City.find(params[:id])
  end
end