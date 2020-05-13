class DistrictsController < ApplicationController
  

   def show
    @country = Country.find(params[:country_id])
    @district = District.find(params[:id])
    @comment = Comment.new
    @comments = @district.comments.all
  end

  def create
  	@country = Country.find(params[:country_id])
  	@district = @country.districts.new(params.require(:district).permit(:name, :description, :country_id)) 
  	@district.save
  	redirect_to country_path(@country)
  	# redirect_back(fallback_location: root_path)
  end

 
end
   