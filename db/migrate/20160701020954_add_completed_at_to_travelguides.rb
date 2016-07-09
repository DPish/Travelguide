class AddCompletedAtToTravelguides < ActiveRecord::Migration
  def change
  	add_column :travelguides, :completed_at, :timestamp
  end
end
