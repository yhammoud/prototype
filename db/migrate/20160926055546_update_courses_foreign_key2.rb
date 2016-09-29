class UpdateCoursesForeignKey2 < ActiveRecord::Migration[5.0]
  def change
    remove_foreign_key :courses, :subjects
    add_index :courses, :subject_id
  end
end
