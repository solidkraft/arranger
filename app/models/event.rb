class Event
  attr_reader :location, :starts_at

  def initialize(location:, starts_at:)
    @location = location
    @starts_at = starts_at
  end

  def schedule
    "#{location} - #{starts_at}"
  end

  alias_method :where, :location
  alias_method :when, :starts_at
end
