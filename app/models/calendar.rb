require "delegate"

class Calendar < DelegateClass(Array)
  def initialize
    super([])
  end

  def organization
    Organization.new(name: "Default", bio: "...", location: "Location")
  end

  def account
    Account.new(name: "Name", email: "email@email.com")
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

  delegate :location, to: :organization

  alias_method :add, :<<
end
