class CreateDelivers < ActiveRecord::Migration
  def change
    create_table :delivers do |t|
      t.references :resume, index: true
      t.references :post, index: true

      t.timestamps
    end
  end
end
