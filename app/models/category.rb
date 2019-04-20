class Category < ApplicationRecord
    has_many :category_requests
    has_many :requests, through: :category_requests
    has_many :category_prayers
    has_many :prayers, through: :category_prayers
end
