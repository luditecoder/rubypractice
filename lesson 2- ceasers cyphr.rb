#ceasers cyphur takes a phrase and shifts the letters by an amount to assign a new letter

org_letters = %{abcdefghijklmnopqrstuvwxyz}
puts "Please input the sentance to be encoded"
encoded = $stdin.gets.chomp 
puts "Please input the key number"
number_code = $stdin.gets.chomp
for each org_letters 
