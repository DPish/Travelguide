class CreateTravelguides < ActiveRecord::Migration
  def change
    create_table :travelguides do |t|
      t.string :destination

      t.timestamps null: false
    end
  end
end
