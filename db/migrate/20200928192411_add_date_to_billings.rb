class AddDateToBillings < ActiveRecord::Migration[6.0]
  def change
    add_column :billings, :date, :date
  end
end
