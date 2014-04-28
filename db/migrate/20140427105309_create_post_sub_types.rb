class CreatePostSubTypes < ActiveRecord::Migration
  def change
    create_table :post_sub_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
