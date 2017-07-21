class AddColumnToReview < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :creator_id, :integer
    add_column :reviews, :receiver_id, :integer
  end
end
