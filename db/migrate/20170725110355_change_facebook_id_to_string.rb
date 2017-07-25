class ChangeFacebookIdToString < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :facebook_id, :bigint
    add_column :users, :facebook_id, :string
  end
end
