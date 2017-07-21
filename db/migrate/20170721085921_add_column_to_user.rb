class AddColumnToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :email, :string
    add_column :users, :password_digest, :string
    add_column :users, :image, :text
    add_column :users, :is_dev, :boolean
    add_column :users, :portfolio_url, :string
    add_column :users, :linkedin_url, :string
    add_column :users, :github_url, :string
    add_column :users, :tech_stack, :string
  end
end
