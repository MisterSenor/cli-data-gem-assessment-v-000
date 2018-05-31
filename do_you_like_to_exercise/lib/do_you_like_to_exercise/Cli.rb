
class Cli

  def call
     puts "Hello.  Do you like to exercise? (Enter: Y/N)"
     input = gets.strip
     if input == "Y"
       puts "Hello and welcome to the Crossfit WOD scraper!"
       puts "Note: WOD stands for 'Workout of the Day.'"
       puts "Type '1' for this weeks' series of WOD's."
     elsif input == "1"
       puts scraper object for WODs
     elsif input == "N"
       puts "Here is Culver's frozen custard flavor of the day: #{scrape the Culvers flavor for today}."
     end
   end

 end
