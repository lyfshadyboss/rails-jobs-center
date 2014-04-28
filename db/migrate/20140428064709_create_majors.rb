class CreateMajors < ActiveRecord::Migration
  def change
    create_table :majors do |t|
      t.string :name
      t.text :introduce

      t.timestamps
    end
  end
end
