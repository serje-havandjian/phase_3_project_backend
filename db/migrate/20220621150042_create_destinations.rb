class CreateDestinations < ActiveRecord::Migration[6.1]
  def change
    create_table :destinations do |t|
      t.string :destination
      t.string :geography
      t.integer :rating
      t.integer :country_id
      t.integer :tourist_id
    end
  end
end
