require 'spec_helper'

describe Donation do
  
  before do
    @donation = Donation.new(year: 2012, month: 10, day: 12, amount:1000, destination: "Atlanta", 
    												 food_type: "apples", food_source: "trees")
  end

  subject { @donation }

  it { should respond_to(:year) }
  it { should respond_to(:month) }
  it { should respond_to(:day) }
  it { should respond_to(:amount) }
  it { should respond_to(:destination) }
  it { should respond_to(:food_type) }
  it { should respond_to(:food_source) }

  it { should be_valid }

end
