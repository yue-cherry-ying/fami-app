class AddExpirationDateToCoupons < ActiveRecord::Migration[6.0]
  def change
    add_column :coupons, :expiration_date, :date
  end
end
