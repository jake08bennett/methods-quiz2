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

	def max_maybe
		assert_equal 0, @m.max_maybe(4, 4)
		assert_equal 8, @m.max_maybe(8, 5)
		assert_equal 8, @m.max_maybe(18, 8)
		assert_equal 4, @m.max_maybe(1, 4)
	end



	# TODO - write tests here

end
