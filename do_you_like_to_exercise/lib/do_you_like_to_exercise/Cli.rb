
class Cli


  def call
    puts "Hello.  Do you like to exercise? (Enter: Y/N)"
    input = gets.strip
      while input != "exit"
        puts "Hello and welcome to the Crossfit WOD scraper."
        puts "Note: WOD stands for 'Workout of the Day'"
        puts "Type 'week' for last weeks' series of WODs."
        puts "Type 'month' for last months' series of WODs."
      end
    end


end
