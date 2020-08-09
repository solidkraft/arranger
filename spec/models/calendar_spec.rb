require "rails_helper"

RSpec.describe Calendar do
  describe "#add" do
    it "adds events to calendar" do
      calendar = Calendar.new
      event = double("event")

      calendar.add(event)

      expect(calendar.events.last).to eq(event)
    end
  end
end
