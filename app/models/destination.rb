class Destination < ActiveRecord::Base
    belongs_to :country
    belongs_to :tourist
end