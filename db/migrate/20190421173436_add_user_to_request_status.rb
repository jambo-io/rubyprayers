class AddUserToRequestStatus < ActiveRecord::Migration[5.2]
  def change
    add_reference :request_statuses, :user, foreign_key: true
  end
end
