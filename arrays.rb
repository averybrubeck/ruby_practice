arr = [1, 3, 5, 7, 9, 11]
number = 3
if arr.select{|a| a == number}
    puts "the number is in the array"
else
    puts "the number is not in the array"
end

