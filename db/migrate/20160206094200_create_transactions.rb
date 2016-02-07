class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.belongs_to :user
      t.string :name
      t.string :category_name
      t.decimal :amount, precision: 30, scale: 10, default: 0
      t.string :description, null: false, limit: 255
      t.references :trackable, polymorphic: true, index: true
      t.timestamps null: false
    end
  end
end
