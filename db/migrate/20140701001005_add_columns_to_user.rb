class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :picture, :string
    add_column :users, :birthday, :date
    add_column :users, :profile, :string
  end
end
