class CountriesController < ApplicationController
  
  def index
    @countries = Country.all
  end

  def show
    @country = Country.find(params[:id])

    @district = District.new
    @districts = @country.districts
  end

  def new
    @country = Country.new
  end

  def edit
  end

  def create
    @country = Country.create(params.require(:country).permit(:name))
    @country.save
    redirect_to countries_path
  end

  def update
  end

  def destroy
  end

  
end
