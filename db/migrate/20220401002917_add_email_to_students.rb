class AddEmailToStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :email, :text
  end
end
