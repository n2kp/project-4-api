class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.datetime :project_deadline
      t.datetime :bid_deadline
      t.string :tech_stack
      t.integer :budget
      t.boolean :is_active
      t.boolean :is_priority
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
