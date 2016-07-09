require"rails_helper"

feature "User completes travelguide " do 


	scenario "successfully" do
		sign_in

			create_travelguide "New York"

			click_on "Mark complete"

			expect(page).to display_completed_travelguide "New York"

	end
end