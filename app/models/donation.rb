class Donation < ActiveRecord::Base
  attr_accessible :year, :month, :day, :amount, :destination, :food_type, :food_source

  validates :year, presence: true
  validates :month, presence: true
  validates :day, presence: true
  validates :amount, presence: true
  validates :destination, presence: true
  validates :food_type, presence: true
  validates :food_source, presence: true

end
