class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :is_tutor, :int, :default => 0
    add_column :users, :birthday, :date
    add_column :users, :grad_year, :date
    add_column :users, :gender, :string
    add_column :users, :major, :string
  end
end
