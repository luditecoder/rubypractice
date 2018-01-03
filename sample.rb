filename = ARGV.first
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

puts "Now we're going to erase #{filename}."
puts 'If you don\'t want that, hit CRTL-C (^C).'
puts 'If you do want that, hit RETURN.'

$stdin.gets

puts "Opening the file..."
target = open(filename, 'w')

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
