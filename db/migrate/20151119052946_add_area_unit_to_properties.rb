class AddAreaUnitToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :area_unit, :string

    add_index :properties, :area_unit
  end
end
