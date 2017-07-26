class RemoveColumnsFromProject < ActiveRecord::Migration[5.1]
  def change
    remove_column :projects, :is_priority, :boolean
    remove_column :projects, :is_active, :boolean
  end
end
