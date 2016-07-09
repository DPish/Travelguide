require "rails_helper"
describe Travelguide, "#completed?" do
	it "returns true if completed_at is set" do
		travelguide = Travelguide.new(completed_at: Time.current)

		expect(travelguide).to be_completed
	end
	
	it "returns false if completed_at is nil" do
		travelguide = Travelguide.new(completed_at: nil)

		expect(travelguide).not_to be_completed
	end
end

describe Travelguide, "#complete!" do 
	it "update completed_at" do
		travelguide =  Travelguide.create!(completed_at: nil)

		travelguide.complete!

		travelguide.reload

		expect(travelguide).to be_completed
	end
end
describe Travelguide, "#mark_incomplete!" do 
	it "sets completed_at to nil" do
		travelguide =  Travelguide.create!(completed_at: Time.current)

		travelguide.complete!

		travelguide.reload

		expect(travelguide).not_to be_completed

	end
end