# Exponential calculations without using exponent

def power(base,exp)

  result = 1   # exp = exponent

  (1..exp).each do
    result = result * base
  end

  puts "#{base} to the power of #{exp} = #{result}"

end

# ####################

print "Enter base: "
base = gets.chomp.to_i
print "Enter exponent: "
exp = gets.chomp.to_i
power(base,exp)


