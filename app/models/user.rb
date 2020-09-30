class User < ApplicationRecord
  has_many :billings
  has_many :types, through: :billings
  has_secure_password
  before_save :downcase_email

  validates :email, uniqueness:true

  def downcase_email
    self.email.downcase!
  end
end
