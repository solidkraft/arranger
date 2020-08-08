class ExceptionalValue
  def initialize(raw_value, reason: "Unspecified")
    @raw_value = raw_value
    @reason = reason
  end

  attr_reader :reason

  def exceptional?
    true
  end

  def to_s
    @raw_value.to_s
  end
end
