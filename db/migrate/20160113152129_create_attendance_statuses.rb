class CreateAttendanceStatuses < ActiveRecord::Migration
  def change
    create_table :attendance_statuses do |t|
      t.integer :event_id
      t.integer :user_id
      t.boolean :attended

      t.timestamps null: false
    end
  end
end
