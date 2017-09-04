class AddSkillsToResumeRelationship < ActiveRecord::Migration[5.0]
  def change
    add_column :skills, :resume_id, :integer
    add_foreign_key :skills, :resumes
  end
end
