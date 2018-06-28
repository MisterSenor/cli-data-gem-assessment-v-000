
class Cli

  def call
    Scraper.new.scrape_wods
     puts "Hello.  Do you like to exercise? (Enter: Y/N)"
     input = gets.strip
     if input == "Y"
       puts "Hello and welcome to the Crossfit WOD scraper!"
       puts " "
       puts "Note: WOD stands for 'Workout of the Day.'"
       puts " "
       puts "Here is a list of the previous weeks' wods."
       puts " "
       list_wods
       puts " "
       puts "Type a number from 1 to 7 for more information on any of these wods."
     elsif input == "N"
       puts "Well, if you don't like to exercise maybe you would like to know that Culver's frozen custard flavor of the day is ____."
     elsif input == "exit"
       goodbye
     end
      get_wods(input)
   end

   def list_wods
     #this method will scrape up a weeks' worth of wods
     Wod.all[0..6].each_with_index do |wod, index|
       puts "#{index +1}. #{wod.day_and_date}"
     end
   end

  def get_wods(input)
    week_of_wods_array = []
    Wod.all[0..6].each do |wod|
      week_of_wods_array << wod.description
    end
    input = gets.strip
    if input.to_i > 0 && input.to_i < 8
      puts week_of_wods_array[input.to_i - 1]
      puts " "
    elsif input == "exit"
      goodbye
    end
    puts "Would you like more information on another wod? (Y/N)"
    puts " "
    input = gets.strip.upcase
    if input == "Y"
      list_wods
      puts "Type the number of the wod about which you would like to know more."
      get_wods(input)
    else
      goodbye
    end
  end


  def goodbye
    puts "See you tomorrow for more wods!"
  end

end
