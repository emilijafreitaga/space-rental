class ChangeTheConfirmAttributeToInteger < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :confirmed, :boolean
    add_column :bookings, :confirmed, :integer, default: 0
  end
end
