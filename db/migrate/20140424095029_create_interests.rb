class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|

      t.string :interest_title
      t.text :interest_detail

      t.references :resume, index: true

      t.timestamps
    end
  end
end
