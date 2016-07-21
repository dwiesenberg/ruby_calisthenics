# Factorials

def factorial(number)
  result = 1
  for i in (1..number) do
    result = result * i
  end
  puts "Factorial of #{number} is #{result}"
end

#############################

print "Enter factorial number: "
factorial_number = gets.chomp.to_i
factorial(factorial_number)
