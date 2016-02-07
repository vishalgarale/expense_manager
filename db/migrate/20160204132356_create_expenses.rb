class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.belongs_to :user
      t.belongs_to :category
      t.string :name, null: false, limit: 50
      t.string :code, limit: 10, null: false, unique: true
      t.string :description, null: false, limit: 255
      t.decimal :amount, precision: 30, scale: 10, default: 0
      t.date :date_of_expense, null: false
      t.string :status, null: false, default: 'created'
      t.timestamps null: false
    end
  end
end
