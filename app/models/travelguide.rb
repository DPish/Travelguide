class Travelguide < ActiveRecord::Base
	has_many :attractions

	def completed?
		completed_at?
	end

	def complete!
		touch :completed_at
	end

	def mark_incomplete!
		update_column :completed_at, nil
	end

	def self.search(search)
	  where("destination LIKE ?", "%#{search}%") 
	end

	


end
