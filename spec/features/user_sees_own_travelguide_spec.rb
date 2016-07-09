require "rails_helper"

feature "User sees own travelguide" do
	scenario "doesn't see others' travelguide" do
		Travelguide.create!(destination: "New York", email: "someone_else@example.com")

		sign_in_as "someone@example.com"

		expect(page).not_to display_travelguide "New York"
		
  end	
end