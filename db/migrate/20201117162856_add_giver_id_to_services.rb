class AddGiverIdToServices < ActiveRecord::Migration[6.0]
  def change
    add_column :services, :giver_id, :integer
  end
end
