class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|

      t.string :title
      t.text :detail

      t.references :resume, index: true

      t.timestamps
    end
  end
end
