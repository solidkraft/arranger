require "rails_helper"

RSpec.describe What do
  describe "initialization" do
    context "when valid" do
      it "returns reason or circumstance of the event" do
        service = "Service"
        what = What(service)

        expect(what.service).to eq(service)
      end
    end

    context "when invalid" do
      it "raises exception" do
        invalid_service = nil

        expect {
          What(invalid_service)
        }.to raise_error(ArgumentError)
      end
    end
  end
end
