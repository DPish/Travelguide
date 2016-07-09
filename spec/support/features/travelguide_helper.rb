module Features
	def create_travelguide (travelguide_destination)
		click_on "Add a new travelguide"
		fill_in "Destination", with: travelguide_destination
		click_on "Submit"
	end

	def display_travelguide (travelguide_destination)
		have_css ".travelguides li", text: travelguide_destination
	end

	def display_completed_travelguide (travelguide_destination)
		have_css ".travelguides li.completed", text: travelguide_destination
	end
end