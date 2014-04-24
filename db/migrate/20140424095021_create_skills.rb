class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|

      t.string :skill_title
      t.text :skill_detail

      t.references :resume, index: true

      t.timestamps
    end
  end
end
