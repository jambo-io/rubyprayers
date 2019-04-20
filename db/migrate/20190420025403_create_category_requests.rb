class CreateCategoryRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :category_requests do |t|
      t.references :category, foreign_key: true
      t.references :request, foreign_key: true

      t.timestamps
    end
  end
end
