class CommentsController < ApplicationController
  

  def create
  	@country = Country.find(params[:country_id])
  	@district = @country.districts.find(params[:district_id])
  	@comment = @district.comments.new(params.require(:comment).permit(:body, :district_id))
  	@comment.save
  	redirect_to country_districts_path(@district)
  end

  def show
  end
end
