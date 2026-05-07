class FirstName < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :country, presence: true
end
