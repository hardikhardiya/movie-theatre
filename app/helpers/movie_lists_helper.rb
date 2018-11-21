module MovieListsHelper
	def get_show_details(movielist)
		arr = []
		movielist.each do |movie|
			movie.shows.each do |s|
				arr << [movie.name, movie.price, s.show_time, s.show_hall]

			end	
		end	
		arr
	end	
end
