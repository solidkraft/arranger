class Wut
  def initialize(circumstance, duration:, cost:)
    @circumstance = circumstance
    @duration = duration
    @cost = cost
  end

  attr_reader :circumstance, :duration, :cost
end

def Wut(circumstance, duration: 0, cost: 0)
  fail ArgumentError unless circumstance

  Wut.new(circumstance, duration: duration, cost: cost)
end
