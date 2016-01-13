class CreateLanguagesVolunteers < ActiveRecord::Migration
  def change
    create_table :languages_volunteers do |t|
      t.integer :language_id
      t.integer :volunteer_id
    end
  end
end
