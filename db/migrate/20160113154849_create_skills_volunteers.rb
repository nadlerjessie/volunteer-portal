class CreateSkillsVolunteers < ActiveRecord::Migration
  def change
    create_table :skills_volunteers do |t|
      t.integer :skill_id
      t.integer :volunteer_id
    end
  end
end
