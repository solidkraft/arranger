require "who"
require "what"
require "when"
require "where"

class EventProcess
  def initialize(event_id:, calendar:, event_types:, starts_at:, invitees:)
    @event_id = event_id
    @calendar = calendar
    @event_types = event_types
    @starts_at = starts_at
    @invitees = invitees
  end

  attr_accessor :state
  attr_reader :calendar, :event_id, :event_types, :starts_at, :invitees

  def submitted
    return unless calendar.available?(starts_at)

    host = calendar.account
    Who(host: host, invitees: invitees)

    self.state = :available

    availability_confirmed
  end

  def availability_confirmed
    return unless state == :available
    return unless calendar.includes_type?(event_types)

    event_types.each do |event_type|
      circumstance = event_type.name
      duration = event_type.duration
      cost = event_type.cost
      What(circumstance, duration: duration, cost: cost)
    end

    self.state = :type_selected

    event_types_checked
  end

  def event_types_checked
    return unless state == :type_selected

    location = calendar.location

    When(starts_at)
    Where(location)

    self.state = :scheduled

    scheduled
  end

  def scheduled
    return unless state == :scheduled

    self.state = :complete

    Event.new(
      id: event_id,
      event_types: event_types,
      starts_at: starts_at,
      invitees: invitees,
      location: calendar.location
    )
  end
end
