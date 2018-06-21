class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.float :price
      t.float :width
      t.float :length
      t.float :height
      t.string :url
      t.timestamps
    end
  end
end
