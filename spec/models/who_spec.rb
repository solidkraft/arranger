require "rails_helper"

RSpec.describe Who do
  describe "initialization" do
    context "when valid" do
      it "returns invitees of the event" do
        host = "organizer"
        invitees = ["invitee"]
        who = Who(host: host, invitees: invitees)

        expect(who.invitees).to eq(invitees)
      end
    end

    context "when invalid" do
      it "raises exception" do
        invalid_invitees = nil

        expect {
          Who(invalid_invitees)
        }.to raise_error(ArgumentError)
      end
    end
  end
end
