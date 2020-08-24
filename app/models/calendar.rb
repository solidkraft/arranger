class Calendar < ApplicationRecord
  belongs_to :account

  def organization
    account.organization
  end

  def events
    (@events ||= [])
  end

  def event_types
    (@event_types ||= [])
  end

  def add(event)
    events << event
  end

  def available?(datetime)
    true
  end

  def includes_type?(types)
    true
  end

  delegate :location, to: :organization
end
