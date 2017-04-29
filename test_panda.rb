require "minitest/autorun"
require_relative "panda.rb"

class Testpandafunctions <Minitest::Test
	def test_class_returns_name
		animal=Panda.new("ryan")
		assert_equal("ryan",animal.name)
	end
	def test_class_returns_sound
		animal = Panda.new("ryan")
		assert_equal("boo",animal.sound)
	end
	def test_class_returns_action
		animal = Panda.new("ryan")
		assert_equal("sleeps",animal.action)
	end
	def test_class_returns_char_length
		animal = Panda.new("ryan")
		assert_equal(4,animal.name_count)
	end
	def test_class_returns_char_length
		animal = Panda.new("joe")
		assert_equal(3,animal.name_count)
	end
	def test_class_returns_char_length
		animal = Panda.new("dakota")
		assert_equal(6,animal.name_count)
	end
	def test_class_returns_if_letter_included_in_animal_name
			animal =Panda.new("gorge")
			letter = "g"
			assert_equal(true,animal.correct_letter?(letter))
	end
	def test_class_returns_if_letter_not_included_in_name
			animal =Panda.new("gorge")
			letter = "b"
			assert_equal(false,animal.correct_letter?(letter))
	end
	def test_class_returns_six_asterics
		animal = Panda.new("gorge")
		assert_equal(["*","*","*","*","*"],animal.asterics)
	end
	def test_class_returns_seven_asterics
		animal = Panda.new("hangman")
		assert_equal(["*","*","*","*","*","*","*"],animal.asterics)
	end
	def test_user_guess_is_pushed_into_array
		animal = Panda.new("hangman")
		letter ="h"
		assert_equal(["h"],animal.update_guessed(letter))
	end
	def test_two_user_guess_is_pushed_into_array
		animal = Panda.new("hangman")
		animal.guessed = ["i","t","b"]
		letter ="m"
		assert_equal(["i","t","b","m"],animal.update_guessed(letter))
	end
	def test_user_guess_false
		animal =Panda.new("hangman")
		animal.guessed = ["g","p","i"]
		letter = "j"
		assert_equal(false,animal.varify_guessed(letter))
	end
end