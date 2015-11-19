class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :properties, :address, :city
  end
end
