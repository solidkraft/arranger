class Who
  def initialize(host:, invitees:)
    @host = host
    @invitees = invitees
  end

  attr_reader :host, :invitees
end

def Who(host:, invitees:)
  fail ArgumentError unless host && invitees

  Who.new(host: host, invitees: invitees)
end
