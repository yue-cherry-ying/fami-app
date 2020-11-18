class RemoveFamilyIdFromMembers < ActiveRecord::Migration[6.0]
  def change
    remove_column :members, :family_id
  end
end
