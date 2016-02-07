class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.belongs_to :user
      t.string :name, null: false, limit: 50
      t.string :description, limit: 500
      t.integer :parent_id
      t.string :status, null: false, default: 'created'
      t.string :c_type, null: false
      t.timestamps null: false
    end
    add_index :categories, :parent_id
  end
end
