class CreateSampleWorks < ActiveRecord::Migration
  def change
    create_table :sample_works do |t|

      t.string :title
      t.text :description
      t.string :demo_url

      t.references :resume, index: true

      t.timestamps
    end
  end
end
