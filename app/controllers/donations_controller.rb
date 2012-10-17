class DonationsController < ApplicationController

	def new
		@donation = Donation.new
	end

	def create
		@donation = Donation.new(params[:donation])
		@donation.save
		redirect_to root_path
	end

	def index
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
