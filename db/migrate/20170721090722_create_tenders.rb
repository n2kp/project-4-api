class CreateTenders < ActiveRecord::Migration[5.1]
  def change
    create_table :tenders do |t|
      t.integer :bid
      t.text :pitch
      t.text :image
      t.boolean :is_active
      t.string :status
      t.references :user, foreign_key: true
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
