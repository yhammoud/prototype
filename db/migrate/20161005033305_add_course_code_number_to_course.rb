class AddCourseCodeNumberToCourse < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :code_number, :string
    add_index :courses, :code_number, unique: true
  end
end
