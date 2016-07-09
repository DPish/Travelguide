class AttractionsController < ApplicationController

	def index
		@attractions = Attraction.all
	end

	def new
		@attraction = Attraction.new
	end

	def create
		Attraction.create(attraction_params)
		redirect_to attractions_path
	end

	private

	def attraction_params
		params.require(:attraction).permit(:name)
	end

end