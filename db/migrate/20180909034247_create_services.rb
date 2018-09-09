class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :category
      t.string :title
      t.text :description
      t.string :price
      
      t.timestamps
    end
  end
end
