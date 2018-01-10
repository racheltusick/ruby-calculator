require "./lib/calculator" 

puts "Let's do some math! Enter your equation: " 
user_equation = gets.chomp
newmath = Calculator.new

if newmath.separator(user_equation) == "add" 
    answer = newmath.add(user_equation)
elsif newmath.separator(user_equation) == "subtract" 
    answer = newmath.subtract(user_equation)
elsif newmath.separator(user_equation) == "multiply" 
    answer = newmath.multiply(user_equation)
elsif newmath.separator(user_equation) == "divide" 
    answer = newmath.divide(user_equation) 
else 
    puts "Please enter a valid math problem, dude."
end 

puts answer