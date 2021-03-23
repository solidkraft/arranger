require "rails_helper"

RSpec.describe What do
  describe "initialization" do
    context "when valid" do
      it "returns reason or circumstance of the event" do
        circumstance = "Reason"
        what = What(circumstance: circumstance)

        expect(what.circumstance).to eq(circumstance)
      end
    end

    context "when invalid" do
      it "raises exception" do
        invalid_circumstance = nil

        result = What(invalid_circumstance)

        expect(result).to be_exceptional
        expect(result.reason).to eq("Unrecognized type")
        expect(result.class).to eq(ExceptionalValue)
      end
    end
  end
end
