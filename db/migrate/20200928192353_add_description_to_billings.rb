class AddDescriptionToBillings < ActiveRecord::Migration[6.0]
  def change
    add_column :billings, :description, :text
  end
end
