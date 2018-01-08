class Creepy_Carnival

  def start
  puts"Welcome to Mr. Marvo's Creepy Carnival!"
  puts "In here you will find horriable wonders that would puts hair on a grown man's chest."
  puts "Seems youre a little lost. Think you'll be able to make it out alive."
  cc.big_top
end
def die(why)
  print why, "Sorry seams you were not lucky enough to escape with your life!"
  exit(0)
end

  class BigTop < Creepy_Carnival
    bt = BigTop.new
    bt.intro
      def intro
    puts "\nAs far as the eye can see up are the red and white canvas stripes of the big top tent. What next?"
    what_next = $stdin.gets.chomp
      if what_next.include?("look")
      puts "In front of you is what looks like the ring leader. To your left is a lion in a cage."
      puts "To your right is a set of stage props scattered over the bleachers."
      puts "What do you choose?"
        choose = $stdin.gets.chomp
        if choose == "ring leader"
          return 'ring_leader'
        elsif choose == "lion"
          return 'lion'
        elsif choose == "stage props"
          return 'stage_props'
        else
          puts "Sorry computer doesn't understand that input."
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
      def stage_props
          puts "You walk over to the props. Amongst the sequines glitter and barbells you notice something shiny silver."
          puts " Now what?"
          what = $stdin.gets.chomp
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

      class Passage1 < Creepy_Carnival
        p = Passage1.new
        p.intro
        def intro
          puts "You hear a voice over head 'Seems like you escaped the first portion alive'"
          puts "Maybe next time you won't be so lucky!"
          puts "\n You are between the big top and another tent, the fog makes it impossible to see around you."
          puts "You can walk ahead or behind or enter the door ahead of you.\n"
        door = $stdin.gets.chomp
          if door == "ahead"
            die("The void swallows you whole! ")
          elsif door == "behind"
           puts "You forgot to close the door behind you, the lion has escapped."
           print "It doesn't look happy. what do you do?"
           lion = $stdin.gets.chomp
           if lion == "run"
             die ("You are ripped to shreds")
           elsif lion == "fight"
             while @sword == true
               puts "congrats you live"
             end
             while @sword == false
               die("Really what were you thinking?")
             end
           end
         end
        end
    end
      cc = Creepy_Carnival.new
      cc.start
