class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title
      t.text :content

      t.references :resume, index: true
      t.references :post, index: true
      t.references :parent

      t.timestamps
    end
  end
end
