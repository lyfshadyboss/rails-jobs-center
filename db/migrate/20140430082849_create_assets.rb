class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string :title
      t.string :file_name

      t.references :student, index:true
      t.references :company, index:true

      t.timestamps
    end
  end
end
