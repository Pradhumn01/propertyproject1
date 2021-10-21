class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.string :title
      t.string :property_size
      t.string :price
      t.string :deposit

      t.timestamps
    end
  end
end
