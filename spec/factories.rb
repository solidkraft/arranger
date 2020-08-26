FactoryBot.define do
  sequence :name do |n|
    "name #{n}"
  end

  sequence :email do |n|
    "email#{n}@email.com"
  end

  factory :organization do
    name
  end

  factory :account do
    name
    email

    organization
  end

  factory :calendar do
    account
  end

  factory :event_type do
    name
    type { What(circumstance: "Reason") }

    organization
  end
end
