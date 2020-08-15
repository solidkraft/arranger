require "delegate"

class Calendar < DelegateClass(Array)
  def initialize
    super([])
  end

  def events
    to_a
  end

  def event_types
    (@event_types ||= [])
  end

  def available?(datetime)
    true
  end

  def includes_type?(types)
    true
  end

  alias_method :add, :<<
end
