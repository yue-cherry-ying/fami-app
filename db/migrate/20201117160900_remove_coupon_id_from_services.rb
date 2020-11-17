class RemoveCouponIdFromServices < ActiveRecord::Migration[6.0]
  def change
    remove_column :services, :coupon_id
  end
end
