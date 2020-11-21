class CreateChores < ActiveRecord::Migration[6.0]
  def change
    create_table :chores do |t|
      t.integer :family_id
      t.integer :role_id
      t.string :chore_name
      t.string :category
      t.date :due_date
      t.boolean :completed
      t.integer :coupon_id

      t.timestamps
    end
  end
end
