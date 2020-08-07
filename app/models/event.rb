class Event
  When = Struct.new(:starts_at) { alias_method :starts_at, :to_s }

  attr_reader :location, :starts_at

  def initialize(location:, starts_at:)
    @location = Where[location]
    @starts_at = When.new(starts_at)
  end

  def schedule
    "#{starts_at} at #{location}"
  end

  alias_method :where, :location
  alias_method :when, :starts_at
end
