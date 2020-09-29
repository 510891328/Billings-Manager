class Billing < ApplicationRecord
  belongs_to :user
  belongs_to :type

  validates :fix_or_var, inclusion:{in: %w(fixed variable)}

  def type_name=(name)
    self.type = Type.find_or_create_by(name: name)
  end

  def type_name
    self.type ? self.type.name : nil
  end
end
