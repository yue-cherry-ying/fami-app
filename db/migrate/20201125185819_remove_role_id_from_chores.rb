class RemoveRoleIdFromChores < ActiveRecord::Migration[6.0]
  def change
    remove_column :chores, :role_id
  end
end
