class Request < ApplicationRecord
    #validates :email, uniqueness: true
    has_many :category_requests
    has_many :categories, through: :category_requests

    accepts_nested_attributes_for :categories
end
