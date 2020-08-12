class What
  def initialize(service, duration:)
    @service = service
    @duration = duration
  end

  attr_reader :service
end

def What(service, duration: 0)
  fail ArgumentError unless service

  What.new(service, duration: duration)
end
