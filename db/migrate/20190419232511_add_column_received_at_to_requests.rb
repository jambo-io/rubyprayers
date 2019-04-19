class AddColumnReceivedAtToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :received_at, :datetime
  end
end
