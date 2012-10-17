class Donation < ActiveRecord::Base
  attr_accessible :amount, :day, :destination, :food_source, :food_type, :month, :year
end
