class Organization
  def initialize(name:, bio:, location:)
    @name = name
    @bio = bio
    @location = location
  end

  attr_reader :name, :bio, :location

  def accounts
    (@accounts ||= [])
  end
end
