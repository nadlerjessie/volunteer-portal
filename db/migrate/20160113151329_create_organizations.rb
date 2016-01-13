class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.integer :user_id
      t.string :website

      t.timestamps null: false
    end
  end
end
