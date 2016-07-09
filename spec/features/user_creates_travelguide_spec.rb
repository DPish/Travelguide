require "rails_helper"

feature "user creates travel guide" do
	scenario "successfully" do 
			sign_in
			
			create_travelguide "New York"

			expect(page).to display_travelguide "New York"
			


	end
end