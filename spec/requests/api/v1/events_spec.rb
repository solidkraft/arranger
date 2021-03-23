require "rails_helper"

RSpec.describe "POST /api/v1/calendars/:calendar_id/events" do
  it "returns events" do
    calendar = create(:calendar)
    params = {
      calendar_id: SecureRandom.uuid,
      event_type_ids: [SecureRandom.uuid],
      event: {
        event_id: SecureRandom.uuid,
        starts_at: Time.now,
        invitees: [{ name: "Invitee", email: "email@email.com" }],
      }
    }

    post "/api/v1/calendars/#{calendar.id}/events", params: params

    expect(json_body.dig("data", "id")).to eq(params[:event][:event_id])
  end
end
