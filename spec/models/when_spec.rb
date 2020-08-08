require "rails_helper"

RSpec.describe When do
  describe "initialization" do
    context "when starting date/time is valid" do
      it "returns starting date/time" do
        starts_at = "starts_at"
        where = When(starts_at)

        expect(where.starts_at).to eq(starts_at)
      end
    end

    context "when starting date/time is valid DateTime type value" do
      it "returns starting date/time as text" do
        starts_at = DateTime.current
        where = When(starts_at)

        expect(where.starts_at).to eq(starts_at.to_s)
      end
    end

    context "when starting date/time is invalid" do
      it "raises type error exception" do
        invalid_starts_at = nil

        expect { When(invalid_starts_at) }.to raise_error(TypeError, /starts_at/)
      end
    end
  end
end
