# Is a number prime?

def is_prime?(number)
  found_prime = true
  (2...number).each do |i|
    if number%i == 0
      found_prime = false
      break
    end
  end
  return found_prime
end

print "Enter number: "
num = gets.chomp.to_i
if is_prime?(num) == true
  puts "#{num} is prime"
else
  puts "#{num} is not prime"
end
