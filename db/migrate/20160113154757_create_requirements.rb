class CreateRequirements < ActiveRecord::Migration
  def change
    create_table :requirements do |t|
      t.integer :event_id
      t.integer :skill_id

      t.timestamps null: false
    end
  end
end
