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
    "#{self.class}(#{location})"
  end

  def to_s
    location.to_s
  end
end

def Where(location)
  Where[location]
end
