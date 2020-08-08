class When
  def self.[](starts_at)
    self.new(starts_at)
  end

  def initialize(starts_at)
    @starts_at = starts_at
    freeze
  end

  attr_reader :starts_at

  def inspect
    "#{self.class}(#{starts_at})"
  end

  def to_s
    starts_at.to_s
  end
end

def When(starts_at)
  case starts_at
  when String then When[starts_at]
  when DateTime then When[starts_at.to_s]
  when When then starts_at
  else fail TypeError, "Can't make starts_at from  #{starts_at.inspect}"
  end
end
