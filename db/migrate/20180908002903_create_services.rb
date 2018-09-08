class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :name
      t.text :description
      t.string :category
      t.string :image
      t.float :price
      
      t.timestamps
    end
  end
end
