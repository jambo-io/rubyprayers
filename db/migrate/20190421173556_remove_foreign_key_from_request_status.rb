class RemoveForeignKeyFromRequestStatus < ActiveRecord::Migration[5.2]
  def change
    remove_reference :request_statuses, :user, index: true, foreign_key: true
  end
end
