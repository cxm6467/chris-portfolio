class AddCollegesToResumeRelationship < ActiveRecord::Migration[5.0]
  def change
    add_column :colleges, :resume_id, :integer
    add_foreign_key :colleges, :resumes
  end
end