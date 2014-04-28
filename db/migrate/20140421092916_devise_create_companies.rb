class DeviseCreateCompanies < ActiveRecord::Migration
  def change
    create_table(:companies) do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      t.string :address
      t.string :telephone

      t.string :name
      t.text :introduce
      t.integer :company_type, default: 0
      t.integer :company_scale, default: 0
      t.string :site

      t.timestamps
    end

    add_index :companies, :email,                unique: true
  end
end
