class Organization < ApplicationRecord
  attribute :location, LocationType.new

  store_accessor :info, :phone, :bio, :logo

  validates :name, presence: true
  validates :location, value: true
end
