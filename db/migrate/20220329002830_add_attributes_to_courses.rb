class AddAttributesToCourses < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :number, :string
    add_column :courses, :professor, :string
  end
end
