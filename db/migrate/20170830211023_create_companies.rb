class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|

      t.string :name
      t.string :job_title
      t.text :job_location
      t.date :start_date
      t.date :end_date
      t.timestamps
    
    end
  end
end
