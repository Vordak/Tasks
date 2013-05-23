#encoding: utf-8

require './task1.rb'
require './task2.rb'
require './task3.rb'
require './task4.rb' 

class Main
	def initialize
		puts "Введите номер задания: "
		exercise = gets.to_i
		case exercise
			when 1
				Hello.description
				Hello.show
			when 2
				Digits.description
				Digits.show
			when 3
				Circle.description
				Circle.draw
			when 4
				Hash.description
				Hash.main
			else
			puts "Неправильный номер"
		end
	end
end

Main.new
