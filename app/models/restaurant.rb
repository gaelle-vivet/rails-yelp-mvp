class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORIES = %w[chinese italian japanese french belgian].freeze
  validates :name, :address, :phone_number, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
