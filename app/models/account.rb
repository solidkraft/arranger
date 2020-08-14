class Account
  def initialize(name:, email:)
    @name = name
    @email = email
  end

  def calendars
    (@calendars ||= [])
  end
end
