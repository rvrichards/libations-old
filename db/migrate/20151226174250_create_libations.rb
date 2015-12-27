class CreateLibations < ActiveRecord::Migration
  def change
    create_table :libations do |t|
      t.string :libation_name
      t.decimal :measurement,  :precision => 8, :scale =>2
      t.decimal :container_type
      t.integer :measurement_units
      t.string :country_made
      t.string :company_name
      t.integer :libation_type
      t.string :website

      t.timestamps null: false
    end
    add_index :libations, :libation_name
    add_index :libations, :measurement
  end
end
