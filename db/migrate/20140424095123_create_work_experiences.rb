class CreateWorkExperiences < ActiveRecord::Migration
  def change
    create_table :work_experiences do |t|

      t.string :company_name
      t.string :appointment
      t.string :duty
      t.text :description

      t.date :start_date
      t.date :end_date

      t.references :resume, index: true

      t.timestamps
    end
  end
end
