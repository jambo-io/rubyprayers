class Prayer < ApplicationRecord
    has_many :category_prayers, dependent: :delete_all
    has_many :categories, through: :category_prayers

    accepts_nested_attributes_for :categories
end
