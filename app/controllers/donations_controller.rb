class DonationsController < ApplicationController

	def new
		@donation = Donation.new
	end

	def create
		@donation = Donation.new(params[:donation])
		@donation.save
		redirect_to donations_path
	end

	def index
		@donation = Donation.new
		@donations = Donation.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @donations }
    end
	end

	def destroy
		@donation = Donation.find(params[:id]).destroy
	end

	def home
		
	end
end
