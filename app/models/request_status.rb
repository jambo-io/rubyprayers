class RequestStatus < ApplicationRecord
  belongs_to :request

  scope :sent, -> { where(sent: true) }
  scope :unsent, -> { where(sent: false) }
end
