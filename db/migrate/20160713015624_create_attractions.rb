class CreateAttractions < ActiveRecord::Migration
  def change
    create_table :attractions do |t|
      t.string :name
      t.references :travelguide, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
