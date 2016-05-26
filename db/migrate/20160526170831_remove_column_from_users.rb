class RemoveColumnFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :oauth_secret, :string
  end
end
