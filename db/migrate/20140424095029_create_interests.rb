class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|

      t.string :title
      t.text :detail

      t.references :resume, index: true

      t.timestamps
    end
  end
end
