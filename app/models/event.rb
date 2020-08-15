require "where"
require "when"
require "who"
require "what"

class Event
  def initialize(id:, event_types:, starts_at:, invitees:, location:)
    @id = id
    @event_types = event_types ? event_types : []
    @starts_at = starts_at ? starts_at : Blank.new
    @invitees = invitees ? invitees : []
    @location = location ? location : Blank.new
  end

  attr_reader :id, :event_types, :starts_at, :invitees, :location

  def schedule
    :event_created
  end

  alias_method :where, :location
  alias_method :when, :starts_at
  alias_method :who, :invitees
  alias_method :what, :event_types
end
