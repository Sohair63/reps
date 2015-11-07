class Property < ActiveRecord::Base
  attr_accessible :address, :area, :overview, :price, :status, :title, :property_type
end
