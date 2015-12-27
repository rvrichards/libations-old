class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.references :libation, index: true, foreign_key: true
      t.date :date_drank
      t.string :store_purchased
      t.string :city_purchased
      t.string :prov_purchased
      t.string :country_purchased
      t.string :colour
      t.integer :pulp
      t.integer :can_art
      t.integer :can_look
      t.integer :sweet
      t.integer :juice
      t.integer :sip_giz
      t.integer :flavour
      t.integer :buy_again
      t.boolean :carbonated
      t.string :filename
      t.text :comments

      t.timestamps null: false
    end
  end
end
