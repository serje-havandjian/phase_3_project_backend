class Destination < ActiveRecord::Base
    belongs_to :country
    belongs_to :tourist

    def self.destination_order
        self.all.order(:rating)
    end
end