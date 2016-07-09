require "rails_helper"

feature "User creates attraction" do
	scenario "successfully" do 
			
			sign_in

			click_on "Add a new attraction"
			fill_in "Name", with: "Statue of Liberty"
			click_on "Submit"	

			expect(page).to have_css ".attractions li", text: "Statue of Liberty"
			


	end
end