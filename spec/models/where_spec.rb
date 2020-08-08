require "rails_helper"

RSpec.describe Where do
  describe "initialization" do
    context "when location is valid" do
      it "returns location" do
        location = "location"
        where = Where(location)

        expect(where.location).to eq(location)
      end
    end

    context "when location is invalid" do
      it "raises type error exception" do
        invalid_location = nil

        expect { Where(invalid_location) }.to raise_error(TypeError, /location/)
      end
    end
  end
end
