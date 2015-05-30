require 'backports'
require 'pry'
require 'colorize'

def one_game(player)
		math_type = ["plus", "minus", "multiplied by"].sample
		num1 = rand(1...20)
		num2 = rand(1...20)
		case 
		when math_type == "plus"
			real_answer = num1 + num2
		when math_type == "minus"
			real_answer = num1 - num2
		when math_type == "multiplied"
			real_answer = num1 * num2
		end
		

		puts "#{player.name.capitalize}: What does #{num1} #{math_type} #{num2} equal?"#.colorize(player.color.is_sym)
		player_answer = gets.chomp

		player.lose_life if (real_answer != player_answer.to_i)
		player
end