
class Cli

  def call
     puts "Hello.  Do you like to exercise? (Enter: Y/N)"
     input = gets.strip
     if input == "Y"
       puts "Hello and welcome to the Crossfit WOD scraper!"
       puts "Note: WOD stands for 'Workout of the Day.'"
       puts "Here is a list of the previous weeks' wods."
       list_wods
       menu
     elsif input == "N"
       puts "Well, if you don't like to exercise maybe you would like to know that Culver's frozen custard flavor of the day is ____."
     elsif input == "exit"
       goodbye
     end
   end

   def menu
     input = gets.strip
      if input.to_i > 0 && input.to_i < 8
        list_wods
        puts "Enter the number of the wod for a more detailed description."
        puts ""
        puts Wod.all[input.to_i - 1]
        menu 
      elsif input == "exit"
        goodbye
      else
        puts "Type a number from 1 to 7 or the word exit."
      end
    end



def list_wods
  #this method will scrape up a weeks' worth of wods
  puts "wod 1, wod 2, wod 3, wod 4, wod 5, wod 6, wod 7"
end

def goodbye
  puts "See you next time for more wods!"
end

end
