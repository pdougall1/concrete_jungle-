module ApplicationHelper

	def full_title(page_title)
		base_title = "Concrete Jungle"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"	
		end	
	end	

	def colors
		colors = "#1f77b4 #aec7e8 #ff7f0e #ffbb78 #2ca02c #98df8a 
		          #d62728 #ff9896 #9467bd #c5b0d5 #8c564b #c49c94 
		          #e377c2 #f7b6d2 #7f7f7f #c7c7c7 #bcbd22 #dbdb8d 
		          #17becf #9edae5"
		colors.split(' ')
	end

	def list_of_food_types(food_types)
		descrete_types = []
		food_types.each do |type|
			descrete_types << type unless descrete_types.include?(type)
		end	
		descrete_types
	end

	def dates(donations)
		dates = []
		donations.each do |donation|
			date = ""
			date << donation.month.to_s + "\/" + donation.day.to_s + "\/" + donation.year.to_s
			dates << date
		end	
		dates
	end
end
