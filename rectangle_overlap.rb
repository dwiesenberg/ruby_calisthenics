# Rectangle overlap: do two rectangles overlap?

# Given: x-y coordinates of both rectangles
# Method: if there is no overlap, then any of the following is true:
# maximum y1 <= minimum y2 
# maximum y2 <= minimum y1 
# maximum x1 <= minimum x2 
# maximum x2 <= minimum x1 

# where:
# y1 = y coordinate of first rectangle
# y2 = y coordinate of second rectangle
# x1 = x coordinate of first rectangle
# x2 = x coordinate of second rectangle

def overlap()

  # find max and min x coordinates in each rectangle
  max_rectangle_x = []
  min_rectangle_x = []
  (1..2).each do |i|
    max_rectangle_x[i] = 0
    min_rectangle_x[i] = 1000
    (1..4).each do |j|
      print "Enter x_coordinate of corner #{j} of recatangle #{i}: "
      x_coordinate = gets.chomp.to_i
      if max_rectangle_x[i] < x_coordinate
        max_rectangle_x[i] = x_coordinate
      end
      if min_rectangle_x[i] > x_coordinate
        min_rectangle_x[i] = x_coordinate 
      end
    end
  end    

# find max and min y coordinates in each rectangle
  max_rectangle_y = []
  min_rectangle_y = []
  (1..2).each do |i|
    max_rectangle_y[i] = 0
    min_rectangle_y[i] = 1000
    (1..4).each do |j|
      print "Enter y_coordinate of corner #{j} of recatangle #{i}: "
      y_coordinate = gets.chomp.to_i
      if max_rectangle_y[i] < y_coordinate
        max_rectangle_y[i] = y_coordinate
      end
      if min_rectangle_y[i] > y_coordinate
        min_rectangle_y[i] = y_coordinate
      end
    end
  end    

# Do max/min tests for overlap [see top of program]

  puts "max_rectangle_x[1] = #{max_rectangle_x[1]}"
  puts "min_rectangle_x[1] = #{min_rectangle_x[1]}"
  puts "max_rectangle_x[2] = #{max_rectangle_x[2]}"
  puts "min_rectangle_x[2] = #{min_rectangle_x[2]}"
  puts "max_rectangle_y[1] = #{max_rectangle_y[1]}"
  puts "min_rectangle_y[1] = #{min_rectangle_y[1]}"
  puts "max_rectangle_y[2] = #{max_rectangle_y[2]}"
  puts "min_rectangle_y[2] = #{min_rectangle_y[2]}"

  if max_rectangle_x[1] < min_rectangle_x[2] || \
     max_rectangle_x[2] < min_rectangle_x[1] || \
     max_rectangle_y[1] < min_rectangle_y[2] || \
     max_rectangle_y[2] < min_rectangle_y[1]
    puts "Rectangles do not overlap"
  else
    puts "Rectangles overlap"  
  end
end

# *********************************

overlap()




