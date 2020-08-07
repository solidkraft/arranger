class Event
  def initialize(location:, starts_at:)
    @location = Where[location]
    @starts_at = When[starts_at]
  end

  attr_reader :location, :starts_at

  def schedule
    "#{starts_at} at #{location}"
  end

  alias_method :where, :location
  alias_method :when, :starts_at
end
