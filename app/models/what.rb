class What
  def initialize(circumstance, duration:, cost:)
    @circumstance = circumstance
    @duration = duration
    @cost = cost
  end

  attr_reader :circumstance, :duration, :cost
end

def What(circumstance, duration: 0, cost: 0)
  fail ArgumentError unless circumstance

  What.new(circumstance, duration: duration, cost: cost)
end
