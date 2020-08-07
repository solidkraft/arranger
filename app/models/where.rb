class Where
  def initialize(location)
    @location = location
  end

  attr_reader :location

  alias_method :location, :to_s
end
