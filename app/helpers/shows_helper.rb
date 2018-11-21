module ShowsHelper
	def ticket_array(tickets)
		arr = []
		tickets.each do |val|
			arr << val.seat.split(",")
		end	
		arr.flatten
	end	
end
