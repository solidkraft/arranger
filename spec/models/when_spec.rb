require "rails_helper"

RSpec.describe When do
  describe "initialization" do
    context "when starting date/time is valid" do
      it "returns starting date/time" do
        starts_at = "starts_at"

        result = When(starts_at)

        expect(result.starts_at).to eq(starts_at)
      end
    end

    context "when starting date/time is valid DateTime type value" do
      it "returns starting date/time as text" do
        starts_at = DateTime.current

        result = When(starts_at)

        expect(result.starts_at).to eq(starts_at.to_s)
      end
    end

    context "when starting date/time is invalid" do
      it "returns exceptional value" do
        invalid_starts_at = nil

        result = When(invalid_starts_at)

        expect(result).to be_exceptional
        expect(result.reason).to eq("Unrecognized format")
        expect(result.class).to eq(ExceptionalValue)
      end
    end
  end
end
