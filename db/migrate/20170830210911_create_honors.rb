class CreateHonors < ActiveRecord::Migration[5.0]
  def change
    create_table :honors do |t|

      t.string :organization_name
      t.string :title
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
