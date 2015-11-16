class Property < ActiveRecord::Base
  paginates_per 10

  attr_accessible :address, :area, :overview, :price, :status, :title, :property_type

  validates :address,       presence: true
  validates :area,          presence: true
  validates :price,         presence: true
  validates :title,         presence: true

  validates :status,        presence: true,
                            inclusion: { in: %w(sale rent wanted),
                            message: "%{value} is not a valid status" },
                            allow_nil: false
  validates :property_type, presence: true,
                            inclusion: { in: %w(homes plot commercial),
                            message: "%{value} is not a valid property type" },
                            allow_nil: false
end
