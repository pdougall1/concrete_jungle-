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

	def list_of_destinations(destinations)
		destinations_array = []
		destinations.each do |d|
			destinations_array << d unless destinations_array.include?(d)
		end
		destinations_array	
	end

	def list_of_food_types(food_types)
		descrete_types = []
		food_types.each do |type|
			descrete_types << type unless descrete_types.include?(type)
		end	
		descrete_types
	end

	def make_points_array(list)
		width = 1000.0
		height = 500.0
		number_of_foci = list.length

		number_of_rows = 2
		number_of_columns = number_of_foci / number_of_rows
		space_within_row = width/(number_of_columns + 1)
		space_wthin_column = height/(number_of_rows + 1)

		n = 0

		foci_array = []
		list.each do |type|
			n += 1
			r = space_within_row * n
			r = r - width + space_within_row if r >= width 
			c = 1 if n <= number_of_columns
			c = 2 if n > number_of_columns and n <= number_of_columns * 2
			c = 3 if n > number_of_columns * 2
			foci = {}
			point = {} 
			point[:x] = r 
			point[:y] = space_wthin_column * c
			foci[:list_item] = type
			foci[:point] = point
			foci_array << foci
		end	
		foci_array
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
