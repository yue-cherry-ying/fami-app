class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :name
      t.string :profile_image
      t.text :bio

      t.timestamps
    end
  end
end
