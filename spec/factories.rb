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
end
