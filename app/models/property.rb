class Property < ActiveRecord::Base
  paginates_per 10

  attr_accessible :address, :area, :overview, :price, :status, :title, :property_type
end
