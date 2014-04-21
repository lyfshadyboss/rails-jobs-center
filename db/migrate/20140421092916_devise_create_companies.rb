class DeviseCreateCompanies < ActiveRecord::Migration
  def change
    create_table(:companies) do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      t.timestamps
    end

    add_index :companies, :email,                unique: true
  end
end
