
class Cli

  def call
    Scraper.new.scrape_wods
     puts "Hello.  Do you like to exercise? (Enter: Y/N)"
     input = gets.strip.upcase
      if input == "Y"
       puts "Hello and welcome to the Crossfit WOD scraper!"
       puts " "
       puts "Note: WOD stands for 'Workout of the Day.'"
       puts " "
       puts "Here is a list of the previous week's wods."
       puts " "
       list_wods
       puts " "
       get_wods
      elsif input == "N"
        puts "Well, if you don't like to exercise maybe you would like to know that Culver's frozen custard flavor of the day is #{Culvers_scraper.new.flavor_scraper}."
      else
        puts "I don't understand. Please type 'Y' or 'N'."
        call
      end
   end

   def list_wods
     #this method will scrape up a weeks' worth of wods
     Wod.all[0..6].each_with_index do |wod, index|
       puts "#{index +1}. #{wod.day_and_date}"
     end
   end

  def get_wods
    @week_of_wods_array = []
    Wod.all[0..6].each do |wod|
      @week_of_wods_array << wod.description
    end

    verify_wods
  end

  def verify_wods
    puts "Type a number from 1 to 7 for more information on any of these wods."
    input = gets.strip
    if input.to_i > 0 && input.to_i < 8
      puts " "
      puts @week_of_wods_array[input.to_i - 1]
      puts " "
    else
      puts "I'm sorry.  I don't recognize your input.  Please type 'Y' or 'N'."
      more_info
    end
    more_info
  end

  def more_info
    puts " "
    puts "Would you like more information on another wod? (Y/N)"
    input = gets.strip.upcase
    if input == "Y"
      list_wods
      get_wods
      verify_wods
    elsif input == "N"
      goodbye
    else
      puts "Sorry, I can't understand.  Please type 'Y' or 'N'."
      more_info
    end
  end

  def goodbye
    puts "See you tomorrow for more wods!"
  end

end
