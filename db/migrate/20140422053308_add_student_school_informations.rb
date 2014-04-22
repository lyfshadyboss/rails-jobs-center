class AddStudentSchoolInformations < ActiveRecord::Migration
  def change
    add_column :students, :name, :string
    add_column :students, :gender, :integer, :default => 0
    add_column :students, :age, :integer, :default => 20
    add_column :students, :social_id, :string
    add_column :students, :birthday, :date

    add_column :students, :group, :integer, :default => 0

    add_column :students, :student_id, :string
    add_column :students, :grade, :integer, :default => 0

    add_column :students, :subject, :integer, :default => 0
    add_column :students, :major, :integer, :default => 0

    add_column :students, :self_description, :text
    add_column :students, :teacher_description, :text
  end
end
