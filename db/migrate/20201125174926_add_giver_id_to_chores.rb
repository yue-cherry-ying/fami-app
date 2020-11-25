class AddGiverIdToChores < ActiveRecord::Migration[6.0]
  def change
    add_column :chores, :giver_id, :integer
  end
end
