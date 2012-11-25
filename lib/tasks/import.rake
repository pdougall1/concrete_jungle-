require 'csv'

desc "Import donations from csv file"
task :import_donations_csv => [:environment] do

  file = "db/donations.csv"

  CSV.foreach(file, :headers => true) do |row|
    Donation.create ({
      :year => row[0],
      :month => row[1],
      :day => row[2],
      :amount => row[3],
      :destination => row[4],
      :food_type => row[5],
      :food_source => row[6],
      :created_at => Time.now,
      :updated_at => Time.now
    })
  end
 end 