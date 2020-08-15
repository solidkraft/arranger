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

  describe "#available?" do
    it "checks if calendar has datetime available" do
      calendar = Calendar.new
      datetime = Time.now

      result  = calendar.available?(datetime)

      expect(result).to eq(true)
    end
  end

  describe "#includes_type?" do
    it "checks if event type is included" do
      calendar = Calendar.new
      event_type = double("event_type")

      result  = calendar.includes_type?(event_type)

      expect(result).to eq(true)
    end
  end
end
