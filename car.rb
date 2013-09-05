class Car
	def initialize(fuel, distance) 
		@fuel = fuel
		@distance = distance
		puts "the initialize method is running automatically"
	end

	def get_info()
		"I'm a car. I've driven #{@distance} and have #{@fuel} gallons of gas left."
	end

	def drive(miles_driven)
		if @fuel - (miles_driven/20) > 0
			@fuel = @fuel- (miles_driven/20)
			print "You have #{@fuel} miles left before you run out of gas"
		else fuel - (miles_driven/20)
			print "You are out of gas. You need to fill up!"
		end
	end

	def fuel_up()
		if @fuel == 0 
			fill_up_cost = 35.00
			print "It will cost #{fill_up_cost} to fill up your car"
		elsif @fuel == 10
			print "You have a full tank of gas. You do not need to fill up"
		else			
			fill_up_cost = (10 - @fuel)*3.5
			print "#{fill_up_cost}"
		end			
	end	   
end