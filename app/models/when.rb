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
    "#{self.class}[#{starts_at}]"
  end

  def to_s
    starts_at
  end
end
