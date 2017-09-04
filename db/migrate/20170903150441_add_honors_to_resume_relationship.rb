class AddHonorsToResumeRelationship < ActiveRecord::Migration[5.0]
  def change
    add_column :honors, :resume_id, :integer
    add_foreign_key :honors, :resumes
  end
end
