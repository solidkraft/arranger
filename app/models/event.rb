require "where"
require "when"
require "who"
require "what"

class Event
  def initialize(location:, starts_at:, organizer:, invitee:, circumstance:)
    @location = location ? Where(location) : Blank.new
    @starts_at = starts_at ? When(starts_at) : Blank.new
    @attendants = organizer && invitee ? Who(organizer: organizer, invitee: invitee) : Blank.new
    @circumstance = circumstance ? What(circumstance) : Blank.new
  end

  attr_reader :location, :starts_at, :attendants, :circumstance

  def schedule
    "#{starts_at} #{location}"
  end

  alias_method :where, :location
  alias_method :when, :starts_at
  alias_method :who, :attendants
  alias_method :what, :circumstance
end
