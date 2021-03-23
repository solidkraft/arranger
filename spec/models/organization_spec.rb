require "rails_helper"

RSpec.describe Organization do
  describe "validations" do
    it { should validate_presence_of(:name) }

    it "expects a location" do
      location = Where(location: "Location", lat: -1231.9879, lon: 97989.22)
      organization = create(:organization, location: location)

      expect(organization.location.inspect).to eq(location.inspect)
      expect(organization.location.lat).to eq(-1231.9879)
      expect(organization.location.lon).to eq(97989.22)
    end
  end
end
