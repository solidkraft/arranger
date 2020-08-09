require "rails_helper"

RSpec.describe Who do
  describe "initialization" do
    context "when valid" do
      it "returns attendants of the event" do
        organizer, invitee = "organizer", "invitee"
        who = Who(organizer: organizer, invitee: invitee)

        expect(who.organizer).to eq(organizer)
      end
    end

    context "when invalid" do
      it "raises exception" do
        invalid_organizer = nil
        invitee = "invitee"

        expect {
          Who(organizer: invalid_organizer, invitee: invitee)
        }.to raise_error(ArgumentError)
      end
    end
  end
end
