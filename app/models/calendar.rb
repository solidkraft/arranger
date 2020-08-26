class Calendar < ApplicationRecord
  belongs_to :account

  has_many :calendar_event_types
  has_many :event_types, through: :calendar_event_types

  def organization
    account.organization
  end

  def events
    (@events ||= [])
  end

  def add(event)
    events << event
  end

  def available?(datetime)
    true
  end

  def includes_type?(types)
    (types - event_types).empty?
  end

  delegate :location, to: :organization
end
