class What
  def initialize(circumstance, duration:)
    @circumstance = circumstance
    @duration = duration
  end

  attr_reader :circumstance
end

def What(circumstance, duration: 0)
  fail ArgumentError unless circumstance

  What.new(circumstance, duration: duration)
end
