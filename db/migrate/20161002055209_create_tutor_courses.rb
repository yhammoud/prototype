class CreateTutorCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :tutor_courses, id: false do |t|
      t.belongs_to :course, index: true
      t.belongs_to :tutor, index: true
    end
    add_index :tutor_courses, [:course_id, :tutor_id], unique: true
  end
end
