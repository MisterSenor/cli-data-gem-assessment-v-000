
class Cli

  def goodbye
    puts "See you next time for more wods!"
  end


  def list_wods
    #this method will scrape up a weeks' worth of wods
    puts "wod 1, wod 2, wod 3, wod 4, wod 5, wod 6, wod 7"
  end

  def call
     puts "Hello.  Do you like to exercise? (Enter: Y/N)"
     input = gets.strip
     if input == "Y"
       puts "Hello and welcome to the Crossfit WOD scraper!"
       puts "Note: WOD stands for 'Workout of the Day.'"
       puts "Type 'WOD' for this weeks' series of WOD's."
     elsif input == "N"
       puts "Well, if you don't like to exercise maybe you would like to know that Culver's frozen custard flavor of the day is ____."
     elsif input == "exit"
       goodbye
     end
     input = gets.strip
     if input == "WOD"
       list_wods
       puts "Type the number of the WOD for a more specific description of the WOD."
     elsif input == "exit"
       goodbye
     end
     input = gets.strip
      case input
      when "1"
        puts "wod 1 info"
      when "2"
        puts "wod 2 info"
      when "3"
        puts "wod 3 info"
      when "4"
        puts "wod 4 info"
      when "5"
        puts "wod 5 info"
      when "6"
        puts "wod 6 info"
      when "7"
        puts "wod 7 info"
      end
   end

end 
