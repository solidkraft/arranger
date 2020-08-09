require "delegate"

class Calendar < DelegateClass(Array)
  def initialize
    super([])
  end

  def events
    to_a
  end

  alias_method :add, :<<
end
