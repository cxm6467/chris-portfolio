class CreateColleges < ActiveRecord::Migration[5.0]
  def change
    create_table :colleges do |t|
      t.string :name
      t.string :degree
      t.date :start_date
      t.date :end_date
      t.timestamps
    end
  end
end
