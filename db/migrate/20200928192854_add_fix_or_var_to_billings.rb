class AddFixOrVarToBillings < ActiveRecord::Migration[6.0]
  def change
    add_column :billings, :fix_or_var, :string
  end
end
