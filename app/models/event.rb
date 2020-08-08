require "where"
require "when"

class Event
  def initialize(location:, starts_at:)
    @location = location ? Where(location) : Blank.new
    @starts_at = starts_at ? When(starts_at) : Blank.new
  end

  attr_reader :location, :starts_at

  def schedule
    "#{starts_at} #{location}"
  end

  alias_method :where, :location
  alias_method :when, :starts_at
end
