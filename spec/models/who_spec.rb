require "rails_helper"

RSpec.describe Who do
  describe "initialization" do
    context "when valid" do
      it "returns participants of the event" do
        participants = ["organizer", "invitee"]
        who = Who(participants)

        expect(who.participants).to eq(participants)
      end
    end

    context "when invalid" do
      it "raises exception" do
        invalid_participants = nil

        expect {
          Who(invalid_participants)
        }.to raise_error(ArgumentError)
      end
    end
  end
end
