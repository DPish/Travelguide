class CompletionsController < ApplicationController
	def create
		travelguide.complete!
		redirect_to travelguides_path
	end
	def destroy
		travelguide.mark_incomplete!
		redirect_to travelguides_path
	end
	private

	def travelguide
		current_user.travelguides.find(params[:travelguide_id])
	end


end