require "rails_helper"

RSpec.describe EventProcess do
  it "processes event" do
    event_types = [create(:event_type)]
    calendar = create(:calendar, event_types: event_types)
    event_id = SecureRandom.uuid
    starts_at = Time.now
    invitees = [double("invitee")]
    process = EventProcess.new(
      calendar: calendar,
      event_id: event_id,
      event_types: event_types,
      starts_at: starts_at,
      invitees: invitees
    )

    result = process.submitted

    expect(process.state).to eq(:complete)
    expect(result.id).to eq(event_id)
  end
end
