class AddUsernameToStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :username, :text
  end
end
