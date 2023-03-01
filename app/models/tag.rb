class Tag < ApplicationRecord
  enum kind: {expenses: 1, income: 2 }
  belongs_to :user
  validates :name, presence: true
  validates :sign, presence: true
end
