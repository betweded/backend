class Property < ApplicationRecord
  belongs_to :user
  has_one_attached :image


  APARTMENT = 'Apartment'.freeze
  HOUSE = 'House'.freeze
  CONDO = 'Condo'.freeze
  LAND = 'Land'.freeze

  RENT = 'Rent'.freeze
  SALE = 'Sale'.freeze
  SOLD = 'Sold'.freeze

  FURNISHED = 'Furnished'.freeze
  CONSTRUCTION = 'Construction'.freeze
  COMPLETE = 'Complete'.freeze

  PROPERTY_STATUS = [RENT, SALE, SOLD].freeze
  PROPERTY_TYPE = [APARTMENT, HOUSE, CONDO, LAND].freeze
  LISTING_TYPE = [FURNISHED, CONSTRUCTION, COMPLETE].freeze

  validates :property_status, inclusion: {in: PROPERTY_STATUS}
  validates :property_type, inclusion: {in: PROPERTY_TYPE}
  validates :listing_type, inclusion: {in: LISTING_TYPE}

  validates :price, :property_status, :property_type, :listing_type, :area, :bedroom_count, :bathroom_count, presence: true

end
