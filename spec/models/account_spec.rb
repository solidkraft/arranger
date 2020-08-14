require "rails_helper"

RSpec.describe Account do
  describe "#calendars" do
    it "returns list of calendars" do
      account = Account.new(name: "Name", email: "email@email.com")
      calendar = Calendar.new
      account.calendars << calendar

      result = account.calendars

      expect(result).to include(calendar)
    end
  end
end
