class Billing < ApplicationRecord
  belongs_to :user
  belongs_to :type

  validates :fix_or_var, inclusion:{in: %w(fixed variable)}
end
