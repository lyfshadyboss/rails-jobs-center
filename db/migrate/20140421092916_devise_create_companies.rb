class DeviseCreateCompanies < ActiveRecord::Migration
  def change
    create_table(:companies) do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

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
    add_index :companies, :reset_password_token, unique: true
  end
end
