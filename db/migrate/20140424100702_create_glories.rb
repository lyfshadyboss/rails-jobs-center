class CreateGlories < ActiveRecord::Migration
  def change
    create_table :glories do |t|

      t.string :title
      t.text :description
      t.date :date

      t.references :resume, index: true

      t.timestamps
    end
  end
end
