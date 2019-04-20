class Request < ApplicationRecord
    #validates :email, uniqueness: true
    has_many :category_requests, dependent: :delete_all
    has_many :categories, through: :category_requests

    accepts_nested_attributes_for :categories
end
