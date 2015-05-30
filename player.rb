class Player
	attr_accessor :score, :lives, :name				 	# Why are these symbols and not instance variables?
																							# Do I need all of these to be read and write? Is that accessor means?
	def initialize(name, score, lives, color)
		@name = name
		@score = score
		@lives = lives
		# @turn = turn
		@color = color
	end

	def gain_points
		@score += 1
	end

	def lose_life
		@lives -= 1
	end

	## attr_reader
	# def name #getter
	# 	name
	# end

	# attr_writer
	# def name(name) #setter
	# 	self.name = name
	# end

end