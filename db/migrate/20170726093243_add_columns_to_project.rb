class AddColumnsToProject < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :is_priority, :boolean, default: false
    add_column :projects, :is_active, :boolean, default: true
  end
end
