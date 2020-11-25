class AddReceiverIdToChores < ActiveRecord::Migration[6.0]
  def change
    add_column :chores, :receiver_id, :integer
  end
end
