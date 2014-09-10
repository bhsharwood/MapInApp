class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.text :streetname
      t.integer :streetnumber
      t.string :twitter
      t.string :facebook

      t.timestamps
    end
  end
end
