class Where
  def self.[](location)
    self.new(location)
  end

  def initialize(location)
    @location = location
    freeze
  end

  attr_reader :location

  def inspect
    "#{self.class}[#{location}]"
  end

  alias_method :location, :to_s
end
