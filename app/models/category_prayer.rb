class CategoryPrayer < ApplicationRecord
  belongs_to :prayer
  belongs_to :category
end
