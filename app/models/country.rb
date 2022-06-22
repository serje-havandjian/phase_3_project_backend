class Country < ActiveRecord::Base
    has_many :destinations
    has_many :tourists, through: :destinations

    def self.country_name
        self.all.where(country_id: 17)
    end
end