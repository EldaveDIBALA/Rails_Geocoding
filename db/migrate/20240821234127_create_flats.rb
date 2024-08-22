class CreateFlats < ActiveRecord::Migration[7.1]
  def change
    create_table :flats do |t|
      t.string :name
      t.string :address
      t.text :description
      t.decimal :price
      t.integer :rooms
      t.boolean :available
      t.datetime :listed_at

      t.timestamps
    end
  end
end
