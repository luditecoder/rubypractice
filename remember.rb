#program to calculate average from memory

puts "Come try Mr. Marvo's Majical Computer! Input any three numbers
and I will give you the average!"

puts "Would you like to play?"
puts "If you would, press RETURN"
puts "If you wouldn't press CTRL C (^C)."
gets

puts "Allright lets play! Input the first number: "
first_number = gets.chomp.to_i

puts "\n And now the second number: "
second_number = gets.chomp.to_i

puts "\n Last but (maybe) not least (snickers) the third number please?"
third_number = gets.chomp.to_i

average_number = (first_number + second_number + third_number) / 3
puts "Abracadabra! I present to you the average: #{average_number}."
