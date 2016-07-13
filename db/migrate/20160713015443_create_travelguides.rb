class CreateTravelguides < ActiveRecord::Migration
  def change
    create_table :travelguides do |t|
      t.string :destination
      t.string :email
      t.datetime :completed_at

      t.timestamps null: false
    end
  end
end
