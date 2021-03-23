class What
  def initialize(circumstance:, duration: 0, cost: 0)
    @circumstance = circumstance
    @duration = duration
    @cost = cost
  end

  attr_reader :circumstance, :duration, :cost
end

def What(circumstance)
  case circumstance
  when Hash then What.new(**circumstance)
  when What then circumstance
  else ExceptionalValue.new(circumstance, reason: "Unrecognized type")
  end
end
