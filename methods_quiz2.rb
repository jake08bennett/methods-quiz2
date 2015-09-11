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

	def red_ticket(int1, int2, int3)
		if int1 ==2 && int2 ==2 && int3 ==2
			return 10
		elsif (int1 ==1 && int2 ==1 && int3 ==1) || (int1 ==0 && int2 ==0 && int3 ==0)
			return 5
		elsif int1 != int2 && int1 != int3
			return 1
		else
			return 0
		end
	end
	

end