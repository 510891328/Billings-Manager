class User < ApplicationRecord
  has_many :billings
  has_many :types, through: :billings
  has_secure_password

  validates :email, uniqueness:true
end
