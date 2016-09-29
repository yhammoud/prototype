class UpdateCoursesAndSubjects < ActiveRecord::Migration[5.0]
  def change
    add_column :subjects, :name, :string
    add_column :subjects, :code, :string
    add_index :subjects, :code, unique: true
    add_column :courses, :number, :int
    add_column :courses, :name, :string
  end
end
