class CreateCoupons < ActiveRecord::Migration[6.0]
  def change
    create_table :coupons do |t|
      t.integer :giver_id
      t.integer :receiver_id

      t.timestamps
    end
  end
end
