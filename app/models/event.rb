require "where"
require "when"
require "who"
require "what"

class Event
  def initialize(location:, starts_at:, invitee:, event_type:)
    @location = location ? Where(location) : Blank.new
    @starts_at = starts_at ? When(starts_at) : Blank.new
    @participants = invitee ? Who([organizer = nil, invitee]) : Blank.new
    @event_type = event_type ? What(event_type) : Blank.new
  end

  attr_reader :location, :starts_at, :participants, :event_type

  def schedule
    "#{starts_at} #{location}"
  end

  alias_method :where, :location
  alias_method :when, :starts_at
  alias_method :who, :participants
  alias_method :what, :event_type
end
