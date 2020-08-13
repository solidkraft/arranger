require "rails_helper"

RSpec.describe What do
  describe "initialization" do
    context "when valid" do
      it "returns reason or circumstance of the event" do
        circumstance = "Reason"
        what = What(circumstance)

        expect(what.circumstance).to eq(circumstance)
      end
    end

    context "when invalid" do
      it "raises exception" do
        invalid_circumstance = nil

        expect {
          What(invalid_circumstance)
        }.to raise_error(ArgumentError)
      end
    end
  end
end
