class CreateCountries < ActiveRecord::Migration[6.1]
  def change
    create_table :countries do |t|
      t.string :country_name
      t.string :continent
      t.string :language
    end
  end
end
