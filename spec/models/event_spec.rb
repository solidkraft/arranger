require "rails_helper"

RSpec.describe Event do
  context "initialization" do
    context "when location and/or starting date/time is not provided" do
      it 'defaults to blank as value' do
        event = Event.new(
          id: nil,
          event_types: nil,
          starts_at: nil,
          invitees: nil,
          location: nil
        )

        expect(event.where.to_s).to eq("")
        expect(event.when.to_s).to eq("")
        expect(event.who).to eq([])
        expect(event.what).to eq([])
        expect(event.where.class).to eq(Blank)
        expect(event.when.class).to eq(Blank)
      end
    end
  end

  describe "#schedule" do
    it "schedules event" do
      location, starts_at, invitee, circumstance = "Somewhere", "One day", "Invitee", "Party"
      event = Event.new(
        id: SecureRandom.uuid,
        event_types: [circumstance],
        starts_at: starts_at,
        invitees: [invitee],
        location: location
      )

      result = event.schedule

      expect(result).to eq(:event_created)
    end
  end
end
