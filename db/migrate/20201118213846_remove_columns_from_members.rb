class RemoveColumnsFromMembers < ActiveRecord::Migration[6.0]
  def change
    remove_column :members, :name
    remove_column :members, :profile_image
    remove_column :members, :bio
  end
end
