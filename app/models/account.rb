class Account < ApplicationRecord
  belongs_to :organization

  validates :name, :email, presence: true
end
