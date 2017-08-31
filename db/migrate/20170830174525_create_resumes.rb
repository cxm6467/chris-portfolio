class CreateResumes < ActiveRecord::Migration[5.0]
  def change
    create_table :resumes do |t|

      t.integer :resume_id

      t.timestamps
    end
  end
end
