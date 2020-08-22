class Where
  def initialize(location: nil, lat: nil, lon: nil)
    @location = location
    @lat = lat
    @lon = lon
    freeze
  end

  attr_reader :location, :lat, :lon

  def inspect
    "#{self.class}(#{self})"
  end

  def to_s
    [location, lat, lon].compact * ","
  end

  def exceptional?
    false
  end
end

def Where(location)
  case location
  when Hash then Where.new(**location)
  when Where then location
  else ExceptionalValue.new(location, reason: "Unrecognized location")
  end
end
