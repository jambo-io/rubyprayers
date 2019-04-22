class Request < ApplicationRecord
    #validates :email, uniqueness: true
    has_many :category_requests, dependent: :delete_all
    has_many :categories, through: :category_requests
    has_one :request_status, dependent: :destroy
    after_create :create_request_status

    accepts_nested_attributes_for :categories
    accepts_nested_attributes_for :request_status


end
