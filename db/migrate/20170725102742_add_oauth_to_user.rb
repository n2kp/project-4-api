class AddOauthToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :github_id, :bigint
    add_column :users, :facebook_id, :bigint
  end
end
