class EventType < ApplicationRecord
  attribute :type, WhatType.new

  belongs_to :organization

  validates :name, presence: true

  delegate :duration, :cost, to: :type
end
