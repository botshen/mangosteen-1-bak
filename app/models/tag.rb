class Tag < ApplicationRecord
  paginates_per 25
  enum kind: {expenses: 1, income: 2 }
  belongs_to :user
  validates :name, presence: true
  validates :sign, presence: true
end
