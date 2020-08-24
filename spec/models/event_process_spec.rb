require "rails_helper"

RSpec.describe EventProcess do
  it "processes event" do
    calendar = create(:calendar)
    event_id = SecureRandom.uuid
    event_types = [double("event_type", name: "Type", duration: 30, cost: 40)]
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
