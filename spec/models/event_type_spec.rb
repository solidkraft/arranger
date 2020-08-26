require "rails_helper"
require "what"

RSpec.describe EventType do
  describe "associations" do
    it { should belong_to(:organization) }
  end

  describe "validations" do
    it { should validate_presence_of(:name) }
  end

  describe "#type" do
    it "returns a what type" do
      circumstance = "Reason"
      what = What(circumstance: circumstance, duration: 60, cost: 40)
      event_type = create(:event_type, type: what)

      expect(event_type.type.circumstance).to eq(circumstance)
      expect(event_type.type.duration).to eq(60)
      expect(event_type.type.cost).to eq(40)
    end
  end
end
