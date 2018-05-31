
class Cli

  def call
     puts "Hello.  Do you like to exercise? (Enter: Y/N)"
     input = gets.strip
     if input == "Y"
       puts "Hello and welcome to the Crossfit WOD scraper!"
       puts "Note: WOD stands for 'Workout of the Day.'"
       puts "Type 'WOD' for this weeks' series of WOD's."
     elsif input == "N"
       puts "Well, if you don't like to exercise maybe you would like to know that Culver's frozen custard flavor of the day is ____."
     end
     input = gets.strip
     if input == "WOD"
       puts "scraper object for WODs"
       puts "Type the number of the WOD for a more specific description of the WOD."
     end
   end

 end
