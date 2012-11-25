class Donation < ActiveRecord::Base
  attr_accessible :year, :month, :day, :amount, :destination, 
                  :food_type, :food_source, :created_at, :updated_at

end
