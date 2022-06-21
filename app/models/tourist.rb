class Tourist < ActiveRecord::Base
    has_many :destinations
    has_many :countries, through: :destinations
end