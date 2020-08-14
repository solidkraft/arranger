require "rails_helper"

RSpec.describe Organization do
  describe "#accounts" do
    context "when it has no accounts" do
      it "returns empty list" do
        organization = Organization.new(name: "Name", bio: "Bio", location: "Location")
        account = Account.new(name: "Name", email: "email@email.com")
        organization.accounts << account

        result = organization.accounts

        expect(result).to include(account)
      end
    end
  end
end
