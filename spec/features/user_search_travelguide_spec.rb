require "rails_helper"

feature "User sees attraction" do
	scenario "successfully" do
		Travelguide.create!(destination: "New York", email: "someone_else@example.com")
		Travelguide.create!(destination: "Los Angeles", email: "someone_else@example.com")

		sign_in_as "someone_else@example.com"		


		fill_in 'search', with: 'New York'
		click_on 'Search'
						
		expect(page).to display_travelguide 'New York'
		expect(page).not_to display_travelguide 'Los Angeles'
	end
end

