class AddCouponContentToCoupons < ActiveRecord::Migration[6.0]
  def change
    add_column :coupons, :coupon_content, :string
  end
end
