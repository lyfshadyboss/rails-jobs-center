class CreateRequirements < ActiveRecord::Migration
  def change
    create_table :requirements do |t|
      t.string :title
      t.string :detail

      t.references :post, index: true

      t.timestamps
    end
  end
end
