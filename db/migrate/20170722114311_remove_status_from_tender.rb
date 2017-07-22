class RemoveStatusFromTender < ActiveRecord::Migration[5.1]
  def change
    remove_column :tenders, :status, :string
  end
end
