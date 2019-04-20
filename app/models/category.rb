class Category < ApplicationRecord
    has_many :category_requests
    has_many :requests, through: :category_requests
end
