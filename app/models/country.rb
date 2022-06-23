class Country < ActiveRecord::Base
    has_many :destinations
    has_many :tourists, through: :destinations

end