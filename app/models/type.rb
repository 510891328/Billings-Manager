class Type < ApplicationRecord
  has_many :billings
  has_many :users, through: :billings

  validates :name, uniqueness: { case_sensitive: false }
end
