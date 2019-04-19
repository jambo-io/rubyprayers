class AddColumnPhoneToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :phone, :string
  end
end
