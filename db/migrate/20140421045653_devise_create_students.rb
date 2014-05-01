class DeviseCreateStudents < ActiveRecord::Migration
  def change
    create_table(:students) do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      t.string :name
      t.integer :gender, :default => 0
      t.integer :age
      t.string :social_id
      t.date :birthday

      t.string :student_id
      t.integer :group, :default => 0
      t.integer :grade, :default => 0

      t.integer :subject, :default => 0
      t.integer :major, :default => 0

      t.string :address
      t.string :telephone
      t.string :tencent_qq

      t.text :self_description
      t.text :teacher_description

      t.timestamps
    end

    add_index :students, :email,                unique: true
    add_index :students, :reset_password_token, unique: true
  end
end
