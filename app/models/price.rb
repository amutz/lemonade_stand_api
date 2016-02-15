class Price < ApplicationRecord
  validates :dollars, presence: true, numericality: { greater_than: 0 }
  validates :set_at, presence: true
end
