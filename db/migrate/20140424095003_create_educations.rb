class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :school_name
      t.string :degree
      t.string :major

      t.date :start_date
      t.date :end_date

      t.references :resume, index: true

      t.timestamps
    end
  end
end
