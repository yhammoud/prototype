class UpdateTutorsTable < ActiveRecord::Migration[5.0]
  def change
    add_column :tutors, :user_id, :int
    add_index :tutors, :user_id
  end
end
