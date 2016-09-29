class UpdateCoursesForeignKey < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :subject_id, :int
    add_foreign_key :courses, :subjects
  end
end
