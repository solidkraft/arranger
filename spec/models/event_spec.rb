require "rails_helper"

RSpec.describe Event do
  describe "#schedule" do
    it "schedules event" do
      event = Event.new(location: "Somewhere", starts_at: "One day")

      result = event.schedule

      expect(result).to eq("#{event.where} - #{event.when}")
    end
  end
end
