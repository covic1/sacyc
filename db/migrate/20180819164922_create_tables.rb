class CreateTables < ActiveRecord::Migration[5.0]
  def change
    create_table :tables do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
