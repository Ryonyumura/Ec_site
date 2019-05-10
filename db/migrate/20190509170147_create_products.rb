class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, :null => false
      t.text :description, :null => false
      t.integer :price, :null => false
      t.string :unit, default: "yen", :null => false

      t.timestamps
    end
  end
end
