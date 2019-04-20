class Category < ApplicationRecord
    has_many :category_requests, dependent: :delete_all
    has_many :requests, through: :category_requests
    has_many :category_prayers, dependent: :delete_all
    has_many :prayers, through: :category_prayers
end
