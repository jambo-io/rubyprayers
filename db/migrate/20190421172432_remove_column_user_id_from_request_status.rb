class RemoveColumnUserIdFromRequestStatus < ActiveRecord::Migration[5.2]
  def change
    remove_column :request_statuses, :user_id
  end
end
