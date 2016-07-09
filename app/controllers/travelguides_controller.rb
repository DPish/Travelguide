class TravelguidesController < ApplicationController
	before_filter :authenticate
	def index
	  @travelguides = Travelguide.all
	  if params[:search]
	    @travelguides = Travelguide.search(params[:search]).order("created_at DESC")
	  else
	    @travelguides = Travelguide.all.order("created_at DESC")
	  end
	end
	
	def new
		@travelguide = Travelguide.new
	end

	def create
		current_user.travelguides.create(travelguide_params)
		redirect_to travelguides_path
	end

	private

	def travelguide_params
		params.require(:travelguide).permit(:destination)
	end

end