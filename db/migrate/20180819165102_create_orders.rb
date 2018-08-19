class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :food, foreign_key: true
      t.references :table, foreign_key: true
      t.integer :status
      t.integer :cantidad
      t.float :total

      t.timestamps
    end
  end
end
