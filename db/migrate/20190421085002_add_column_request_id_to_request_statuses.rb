class AddColumnRequestIdToRequestStatuses < ActiveRecord::Migration[5.2]
  def change
    add_reference :request_statuses, :request, foreign_key: true
  end
end
