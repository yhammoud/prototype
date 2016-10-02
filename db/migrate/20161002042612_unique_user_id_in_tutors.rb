class UniqueUserIdInTutors < ActiveRecord::Migration[5.0]
  def change
    remove_index :tutors, :user_id
    add_index :tutors, :user_id, unique: true
  end
end
