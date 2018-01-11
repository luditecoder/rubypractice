class Marvo

def menu
puts "Welcome to Mr. Marvo's Majical Computer!
puts "Here you will find wonders and majic of all types!"
puts "What trick would you like to see today?"
puts "Majical math or Swap hands"
choice = gets.chomp.to_s
if choice == "majical math"
majic_math
elsif choice == "swap hands"
swap_hands
else puts "Sorry I'm afraid that majic is too dangerous to unleash on the world."
end 
end



def majic_math
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
end 



def swap_hands
puts "WELCOME TO MR. MARVO'S MAJICAL COMPUTER!
Would you like to see majic trick? I'm going to magically replace a file
with what you are about to say using only code!
Sounds impossible, right? But, No!!"

puts "please enter a filename of your choice : "
choice = $stdin.gets.chomp
beginning_file = open(choice)
print beginning_file.read

puts "Is this your file?"
puts "If it isn't, hit CRTL-C (^C)."
puts "If it is, hit RETURN"

$stdin.gets

puts "Now we're going to erase #{beginning_file}."
puts 'If you don\'t want that, hit CRTL-C (^C).'
puts 'If you do want that, hit RETURN.'

$stdin.gets

puts "Opening the file..."
target = open(beginning_fil, 'w')

puts "Truncating the file. Goodbye!"
target.truncate(0)

puts "Now I'm going to ask you for three lines."

print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

puts "And finally, we close it."
target.close

puts "\nAnd now for the majic!"

puts "Retype the filename, please?"
filename = $stdin.gets.chomp
txt = open(filename)
print txt.read

puts "\nabracadabra!!! chango!!! Your file has transformed. Using only your
input and this majic code!"

txt.close
end 

end 

majical_computer = Marvo.new
majical_computer.menu

