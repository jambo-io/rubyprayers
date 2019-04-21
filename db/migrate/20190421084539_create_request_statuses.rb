class CreateRequestStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :request_statuses do |t|
      t.boolean :sent, default: false
      t.datetime :sent_at
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
