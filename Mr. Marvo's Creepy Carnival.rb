class Creepy_Carnival

  def die(why)
    print why, "Sorry seams you were not lucky enough to escape with your life!"
    exit(0)
  end
end

  class BigTop < Creepy_Carnival

        def intro(option1, option2, option3)
    puts "\nAs far as the eye can see up are the red and white canvas stripes \nof the big top tent. What next?"
    what_next = $stdin.gets.chomp
      if what_next.include?("look")
      puts "In front of you is what looks like the ring leader. To your left is a lion in a cage."
      puts "To your right is a set of stage props scattered over the bleachers."
      puts "What do you choose?"
        choose = gets.chomp
        $choose=choose
        case $choose
        when $choose == "ring leader"
          $bt.option1
      when $choose == "lion"
          option2
        when $choose == "stage props"
          option3
        else
          puts "Sorry computer doesn't understand that input."
        end
      end

      def ring_leader
          puts die("Ring leader starts walking torwards you as you approach, stabs you in the neck, you die.")
      end

      def lion
          puts "Lion growls at you for a little while and then pretends to be asleep."
          print "but it appears that on the other side of the lion's cage is a door\n"
          door = $stdin.gets.chomp
          if door.include?("open")
            return 'passage1'
          elsif door.include?("walk away")
            bt.intro
          else
            die("Apparently the lion was faking afterall.")
          end
        end

      def stage_props
          puts "You walk over to the props. Amongst the sequines glitter and barbells you notice something shiny silver."
          puts " Now what?"
          what = $stdin.gets.chomp.to_s
            if what.include?("examine")
              puts "As you dig through the props, you discover that the shiny silver is actually a sword."
              puts "Do you want to carry?"
              carry = $stdin.gets.chomp
                if carry == "yes"
                  sword = true
                  @sword = sword
                  bt.intro
                elsif carry == "no"
                  sword = false
                  @sword = sword
                  bt.intro
                end
            end
        end
      end
    end

puts"Welcome to Mr. Marvo's Creepy Carnival!"
puts "In here you will find horriable wonders that would puts hair on a grown man's chest."
puts "Seems youre a little lost. Think you'll be able to make it out alive."


$bt = BigTop.new
$bt.intro(:ring_leader, :lion, :stage_props)
