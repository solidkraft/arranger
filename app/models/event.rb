class Event
  Where = Struct.new(:location) { def to_s; location end }
  When = Struct.new(:starts_at) { def to_s; starts_at end }

  attr_reader :location, :starts_at

  def initialize(location:, starts_at:)
    @location = Where.new(location)
    @starts_at = When.new(starts_at)
  end

  def schedule
    "#{starts_at} at #{location}"
  end

  alias_method :where, :location
  alias_method :when, :starts_at
end
