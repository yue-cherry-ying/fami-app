class AddRedeemServiceIdToCoupons < ActiveRecord::Migration[6.0]
  def change
    add_column :coupons, :redeem_service_id, :integer
  end
end
