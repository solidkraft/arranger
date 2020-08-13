class Who
  def initialize(participants)
    @participants = participants
  end

  attr_reader :participants
end

def Who(participants)
  fail ArgumentError unless participants

  Who.new(participants)
end
