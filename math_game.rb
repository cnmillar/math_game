require 'backports'
require 'pry'
require 'colorize'
require './player.rb'
require './one_game.rb'

def math_game
	game = "ON"

	puts "Player 1 name:"
	player1_name = gets.chomp
	player1 = Player.new(player1_name, 0, 3, :blue)

	puts "Player 2 name:"
	player2_name = gets.chomp
	player2 = Player.new(player2_name, 0, 3, :red)
	
	while game == "ON"
		player1.lives = 3
		player2.lives = 3

		while
			player1 = one_game(player1)
			if player1.lives == 0
				player2.gain_points
				puts "#{player2.name} wins! The current tournament score has #{player1.name} with #{player1.score} game(s) won" + 
				" and #{player2.name} with #{player2.score} game(s) won!"
				break
			end

			player2 = one_game(player2)
			if player2.lives == 0
				player1.gain_points
				puts "#{player1.name} wins! The current tournament score has #{player1.name} with #{player1.score} game(s) won" + 
				" and #{player2.name} with #{player2.score} game(s) won!"
				break
			end	
		end

		puts "Would you like to play again? Yes of no."
		answer = gets.chomp.downcase

		# binding.pry

		if answer != ("no" || "yes")
			puts "I don't understand. Please choose 'yes' or 'no'!"
			answer = gets.chomp.downcase
		end

		game = "OFF" if answer == ("no")

	end
end

math_game
