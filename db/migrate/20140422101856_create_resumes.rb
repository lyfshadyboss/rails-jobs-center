class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :title
      t.text :introduce
      t.references :student, index: true

      t.timestamps
    end
  end
end
