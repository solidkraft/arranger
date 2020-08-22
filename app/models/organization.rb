class Organization < ApplicationRecord
  attribute :location, LocationType.new

  store_accessor :info, :phone, :bio, :logo

  validates :name, presence: true
  validates :location, value: true

  def accounts
    (@accounts ||= [])
  end
end
