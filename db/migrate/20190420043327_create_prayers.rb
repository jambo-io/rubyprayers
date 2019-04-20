class CreatePrayers < ActiveRecord::Migration[5.2]
  def change
    create_table :prayers do |t|
      t.text :prayer
      t.string :author

      t.timestamps
    end
  end
end
