FactoryBot.define do
  sequence :name do |n|
    "name #{n}"
  end

  factory :organization do
    name
  end
end
