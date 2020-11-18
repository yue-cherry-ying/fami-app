class AddFamilyIdToUsersMembers < ActiveRecord::Migration[6.0]
  def change
    add_column :members, :family_id, :integer
  end
end
