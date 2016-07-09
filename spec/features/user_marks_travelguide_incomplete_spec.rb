require "rails_helper"

feature "User marks travelguide incomplete " do 


	scenario "successfully" do
		sign_in

			create_travelguide "New York"

			click_on "Mark complete"
			click_on "Mark incomplete"

			expect(page).not_to display_completed_travelguide "New York"
			expect(page).to display_travelguide "New York"
	end

end	