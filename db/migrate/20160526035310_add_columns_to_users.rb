class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :screen_name, :string
    add_column :users, :email, :string
    add_column :users, :oauth_token, :string
    add_column :users, :oauth_secret, :string
  end
end
