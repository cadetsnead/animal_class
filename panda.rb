class Panda
	
	attr_accessor :name,:sound,:action,:guessed

	def initialize(name)
		@name = name
		@sound = "boo"
		@action = "sleeps"
		@guessed = []
	end
	def update_guessed(choice)
		guessed.push(choice)
	end
	def varify_guessed(letter)
		guessed.include?(letter)
	end	
	def name_count
		name.length
	end
	def correct_letter?(letter)
		p name.include? (letter)
	end
	def asterics
		Array.new(name_count,"*")
	end
end