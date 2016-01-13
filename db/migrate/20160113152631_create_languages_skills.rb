class CreateLanguagesSkills < ActiveRecord::Migration
  def change
    create_table :languages_skills do |t|
      t.integer :skill_id
      t.integer :volunteer_id
    end
  end
end
