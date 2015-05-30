require 'backports'
require 'pry'
require 'colorize'

def one_game(player)
		num1 = rand(1...20)
		num2 = rand(1...20)
		real_answer= num1 + num2

		puts "#{player.name.capitalize}: What does #{num1} plus #{num2} equal?"#.colorize(player.color.is_sym)
		player_answer = gets.chomp

		player.lose_life if (real_answer != player_answer.to_i)
		player
end