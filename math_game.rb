require 'backports'
require 'pry'
require 'colorize'

def one_game(current_score, player, player_name)
		num1 = rand(1...20)
		num2 = rand(1...20)
		real_answer= num1 + num2
		color = [:blue, :red]

		puts "#{player_name.capitalize}: What does #{num1} plus #{num2} equal?".colorize(color[player])
		player_answer = gets.chomp

		(real_answer != player_answer.to_i) ? (updated_score = current_score += 1)  : (updated_score = current_score)
		updated_score
end


def math_game
	game = "ON"

	puts "Player 1 name:"
	player1_name = gets.chomp
	puts "Player 2 name:"
	player2_name = gets.chomp
	
	while game == "ON"
		player = [1,2]
		player1_score = 0
		player2_score = 0

		while
			player1_score = one_game(player1_score, 1, player1_name)
			if player1_score == 3
				puts "#{player1_name} wins!"
				break
			end
			player2_score = one_game(player2_score, 2, player2_name)
			if player2_score == 3
				puts "#{player2_name} wins!"
				break
			end	
		end
		puts "Would you like to replay? Yes of no."
		game = "OFF" if gets.chomp.downcase == ("no")
	end
end

math_game