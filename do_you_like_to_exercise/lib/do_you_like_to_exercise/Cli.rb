
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
       describe_wods
     elsif input == "N"
       puts "Well, if you don't like to exercise maybe you would like to know that Culver's frozen custard flavor of the day is ____."
     elsif input == "exit"
       goodbye
     end
   end

def list_wods
  #this method will scrape up a weeks' worth of wods
  Wod.all[0..6].each do |wod|
    puts wod.day_and_date
  end
end

def describe_wods
  puts "Enter a number from 1 to 7 for more information on a workout."
  week_of_wods_array = []
  Wod.all[0..6].each do |wod|
    week_of_wods_array << wod.description
  end
  input = gets.to_i
    if input > 0 && input < 8
      puts week_of_wods_array[input + 1]
      list_wods
    elsif input == "exit"
      goodbye
    else
      puts "You need to type a number from 1 to 7."
      describe_wods
    end
  end

def goodbye
  puts "See you next time for more wods!"
end

end
