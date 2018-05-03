class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, :image_url, :link_url
      t.decimal :price
      t.text :description
      t.timestamps      
    end
  end
end
