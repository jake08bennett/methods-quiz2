module MethodsQuiz2

	def without_doubles(dice1, dice2, doubles)
		if doubles == true && dice1 == dice2
			dice1 + dice2 + 1
		else
			dice1 + dice2
		end
	end 
	
	def max_maybe(num1, num2)
		if num2 == num1
			return 0
		elsif num1 % 5 == num2 % 5
			if num2 > num1
				return num1
			elsif num1 > num2
				return num2
			end
		else 
			if num2 < num1
				return num1
			elsif num1 < num2
				return num2
			end
		end
	end

	def squirrels_play?(temp, summer)
		if temp > 59 && temp < 91
			return true
		elsif summer = true && (temp > 59 && temp < 101)
			return true
		else
			return false
		end
	end

			
	

end