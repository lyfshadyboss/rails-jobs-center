class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title

      # 职位招聘人数
      t.integer :amount

      # 职位描述
      t.text :description

      # 职位需求
      t.text :requirement

      # 浏览人数
      t.integer :view_count

      t.timestamps
    end
  end
end
