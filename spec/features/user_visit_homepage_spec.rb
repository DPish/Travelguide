require "rails_helper"

feature " user visits homepage " do
	scenario " successful " do 

		visit root_path

		expect(page).to have_css 'h1', text: 'Travelguide'

	end
end