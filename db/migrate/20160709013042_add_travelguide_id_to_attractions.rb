class AddTravelguideIdToAttractions < ActiveRecord::Migration
  def change
  	add_column :attractions, :travelguides_id, :integer
  end
end
