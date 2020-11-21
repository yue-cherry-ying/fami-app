class CreateCoupons < ActiveRecord::Migration[6.0]
  def change
    create_table :coupons do |t|
      t.integer :chore_id
      t.boolean :redeemed
      t.integer :receiver_id
      t.integer :giver_id
      t.string :coupon_content
      t.date :expiration_date

      t.timestamps
    end
  end
end
