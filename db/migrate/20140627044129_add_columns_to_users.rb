class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :image, :string
    add_column :users, :username, :string
    add_column :users, :gender, :string
    add_column :users, :name, :string
    add_column :users, :link, :string
  end
end
