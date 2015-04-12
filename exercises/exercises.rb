class Exercises
    require "date"	
    def initialize()
    end
    def ex_8
		formatter = "%{first} %{second} %{third} %{fourth}"

		puts formatter % {first: 1*1, second: 2*2, third: 3*3, fourth: 4*4 }
		today = Date.today.to_s
		tomorrow = Date.today+1
		next_week = Date.today+7
		next_month = Date.today >> 1
		puts formatter % {first: Date.today, second: tomorrow.to_s , third: next_week , fourth: next_month }

		puts formatter % {
			first: "First comes first.",
			second: "Then comes second, ",
			third: "third, ",
			fourth: "and fourth."
		}    	
    end
    def ex_11
		print "What's your favorite food? "
		fav_food = gets.chomp
		print "Who's your favorite actor? "
		fav_actor = gets.chomp
		print "What is a past or present pet name? "
		pet = gets.chomp

		puts "You like #{fav_food}, #{fav_actor} and know or knew an animal named #{pet}."
    end
    def ex_12
    	puts "What is your check?" 
    	amt = gets.chomp.to_f
    	amt = amt * 0.20
    	puts "tip=$#{amt.round(2)}"
    	print "end is "
    end
    def ex_13
 
    end    
end    