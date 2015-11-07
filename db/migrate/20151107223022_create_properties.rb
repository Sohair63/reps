class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|

      t.string :title,            limit: 255, null: false
      t.string :address,          limit: 255, null: false
      t.string :property_type,    limit: 30,  null: false
      t.string :status,           limit: 30,  null: false

      t.text :overview

      t.integer :area,       default: 0
      t.integer :price,      default: 0

      t.timestamps
    end

    add_index :properties, [:status, :property_type]
    add_index :properties, :property_type
    add_index :properties, :address
  end
end
