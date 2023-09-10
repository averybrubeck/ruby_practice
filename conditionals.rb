puts "enter a number"
number = gets.chomp.to_i

if number < 0
    puts "fuck off"
elsif number <= 50
    puts "#{number} is less than 50"
elsif number <= 100
    puts "#{number} is greater than 50"
elsif number > 100
    puts "you're a real whore aren't you?"
    
end
