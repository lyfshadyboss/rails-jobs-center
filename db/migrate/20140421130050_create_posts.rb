class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :post_type
      t.integer :post_sub_type
      t.integer :amount
      t.text :description
      t.integer :salary
      t.integer :view_count

      t.references :company, index: true

      t.timestamps
    end
  end
end
