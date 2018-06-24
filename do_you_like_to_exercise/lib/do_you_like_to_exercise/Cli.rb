
class Cli

  def call
    Scraper.new.scrape_wods
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
     puts "Enter the number of the wod for a more detailed description."
     input = gets.strip
      if input.to_i > 0 && input.to_i < 8
        puts Wod.all[input.to_i - 1]
        menu
      elsif input == "exit"
        goodbye
      else
        puts "Type a number from 1 to 7 or the word exit."
        menu
      end
    end



def list_wods
  #this method will scrape up a weeks' worth of wods
  Wod.all[0..6].each do |wod|
    puts wod.day_and_date
  end
end

def goodbye
  puts "See you next time for more wods!"
end

end
