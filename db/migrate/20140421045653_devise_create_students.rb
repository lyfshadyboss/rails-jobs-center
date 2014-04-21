class DeviseCreateStudents < ActiveRecord::Migration
  def change
    create_table(:students) do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      t.timestamps
    end

    add_index :students, :email,                unique: true
  end
end
