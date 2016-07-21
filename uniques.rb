# Remove duplicate items from array

items = []
item = ""
puts
while true
  print "Enter first/next item (press 'return' when finished): "
  item = gets.chomp
  puts "Item = ", item 
  if item == ""
    break
  end
  items = items.push(item)
end

if items == []
  puts "No items input"
  puts
  exit(true)
end

print "Items before processing are: ", items, "\n\n"

l = items.length()

(0...l).each do |i|
  # test -- print "Items are: ", items
  # test -- puts ""
  # the following "if" happens when duplicates exist causing array to shrink to less than original length.
  if i == items.length() # last item reached
    break                
  end         
  item_value = items[i]
  # test -- puts "item_value = ", item_value              
  items.delete(item_value)
  # test -- print "Items are after deletion: ", items
  # test -- puts ""
  items.insert(i, item_value)
  # test -- print "Items are after insertion: ", items
  # test -- puts ""
end

print "Items after processing are: ", items, "\n\n"

