class AddRoleIdToUsersMembers < ActiveRecord::Migration[6.0]
  def change
    add_column :members, :role_id, :integer
  end
end
