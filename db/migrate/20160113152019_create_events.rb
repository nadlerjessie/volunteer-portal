class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.integer :organization_id
      t.string :description
      t.integer :volunteer_max
      t.integer :minimum_age
      t.string :address
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps null: false
    end
  end
end
