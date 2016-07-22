# The Counting Game

def counting(players, max_number) # max_number is number to count to 
  player = 1 # start play from first player
  d = 1      # d is direction
  (1..max_number).each do |number|
##   test -- puts "player #{player} has said number #{number}"
    if number%7 == 0
      d = -d
    end
    if number%11 == 0
      player = player + d
    end
    player = player + d
    if player < 1
      player = player + players
    end
    if player > players
      player = player - players
    end
  end
end

# *************************************

puts " "
print "Enter number of players: "
number_of_players = gets.chomp.to_i
print "Enter number to count until: "
top_number = gets.chomp.to_i
puts " "

counting(number_of_players, top_number)
puts ""

