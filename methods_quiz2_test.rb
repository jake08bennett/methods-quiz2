require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'methods_quiz2'

class MethodsQuizTest < MiniTest::Test
	def setup
		@m = Class.new do
     include MethodsQuiz2
   	end.new
	end

	def test_without_doubles
		assert_equal 9, @m.without_doubles(4, 4, true)
		assert_equal 8, @m.without_doubles(4, 4, false)
		assert_equal 3, @m.without_doubles(1, 2, false)
	end

	def test_max_maybe
		assert_equal 8, @m.max_maybe(8, 5)
		assert_equal 8, @m.max_maybe(18, 8)
		assert_equal 0, @m.max_maybe(1, 1)
	end

	def test_squirrels_play?
		assert_equal true, @m.squirrels_play?(60, true)
		assert_equal true, @m.squirrels_play?(95, true)
		assert_equal true, @m.squirrels_play?(75, false)
		assert_equal false, @m.squirrels_play?(55, true)
		assert_equal false, @m.squirrels_play?(110, true)
	end

	def test_red_ticket
		assert_equal 10, @m.red_ticket(2, 2, 2)
		assert_equal 5, @m.red_ticket(1, 1, 1)
		assert_equal 5, @m.red_ticket(0, 0, 0)
		assert_equal 1, @m.red_ticket(1, 2, 0)
	end



	# TODO - write tests here

end
