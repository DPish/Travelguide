class AddEmailToTravelguides < ActiveRecord::Migration
  def change
  	add_column :travelguides, :email, :string
  end
end
