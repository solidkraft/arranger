class Who
  def initialize(organizer:, invitee:)
    @organizer = organizer
    @invitee = invitee
  end

  attr_reader :organizer, :invitee
end

def Who(organizer:, invitee:)
  fail ArgumentError unless organizer && invitee

  Who.new(organizer: organizer, invitee: invitee)
end
