class CreateCategoryPrayers < ActiveRecord::Migration[5.2]
  def change
    create_table :category_prayers do |t|
      t.references :prayer, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
