class Destination < ActiveRecord::Base
    belongs_to :country
    belongs_to :tourist

    def self.destination_order
        self.all.order(:rating)
    end

    def self.filter_by_continent(continent_name)
        #returns destinations in continent_name
        self.all.filter do |destination|
            destination.country.continent.sub(' ', '_') == continent_name
        end
    end

end