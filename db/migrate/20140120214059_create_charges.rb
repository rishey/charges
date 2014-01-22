class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.date :created
      t.boolean :paid, :null => false
      t.integer :amount
      t.string :currency
      t.boolean :refunded, :null => false
      t.integer :customer_id

      t.timestamps
    end
  end
end
