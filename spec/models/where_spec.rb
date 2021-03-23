require "rails_helper"

RSpec.describe Where do
  describe "initialization" do
    context "when location is valid" do
      it "returns location" do
        location = "location"
        where = Where(location: location, lat: 987.123, lon: -232.897)

        expect(where.location).to eq(location)
      end
    end

    context "when location is invalid" do
      it "raises type error exception" do
        invalid_location = nil

        result = Where(invalid_location)

        expect(result).to be_exceptional
        expect(result.reason).to eq("Unrecognized location")
        expect(result.class).to eq(ExceptionalValue)
      end
    end
  end
end
