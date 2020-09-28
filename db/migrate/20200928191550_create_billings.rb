class CreateBillings < ActiveRecord::Migration[6.0]
  def change
    create_table :billings do |t|
      t.belongs_to :user
      t.belongs_to :type
      t.timestamps
    end
  end
end
