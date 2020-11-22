class AddChoreImageToChores < ActiveRecord::Migration[6.0]
  def change
    add_column :chores, :chore_image, :string
  end
end
