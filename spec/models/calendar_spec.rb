require "rails_helper"

RSpec.describe Calendar do
  describe "associations" do
    it { should belong_to(:account) }

    it { should have_many(:event_types).through(:calendar_event_types) }
  end

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
      event_types = [create(:event_type)]
      calendar = create(:calendar, event_types: event_types)

      result  = calendar.includes_type?(event_types)

      expect(result).to eq(true)
    end
  end
end
