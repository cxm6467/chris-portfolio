class AddCompaniesToResumeRelationship < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :resume_id, :integer
    add_foreign_key :companies, :resumes
  end
end
