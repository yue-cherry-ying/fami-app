class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.string :service_name
      t.string :category
      t.date :date
      t.string :image
      t.integer :receiver_id
      t.integer :coupon_id

      t.timestamps
    end
  end
end
