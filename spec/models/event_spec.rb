require "rails_helper"

RSpec.describe Event do
  context "initialization" do
    context "when location and/or starting date/time is not provided" do
      it 'defaults to blank as value' do
        event = Event.new(location: nil, starts_at: nil)

        expect(event.where.to_s).to eq("")
        expect(event.when.to_s).to eq("")
        expect(event.where.class).to eq(Blank)
        expect(event.when.class).to eq(Blank)
      end
    end
  end

  describe "#schedule" do
    it "schedules event" do
      location, starts_at = "Somewhere", "One day"
      event = Event.new(location: location, starts_at: starts_at)

      result = event.schedule

      expect(result).to eq("#{starts_at} #{location}")
    end
  end
end
