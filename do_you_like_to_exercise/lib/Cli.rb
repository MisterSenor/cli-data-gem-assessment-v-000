
class Cli

  def initialize
  end 


  def call
    puts "Hello.  Do you like to exercise? (Enter: Y/N)"
    input = gets.strip
    if input == "Y"
      puts "Welcome to the Crossfit.com wod scraper!  W.o.d. stands for 'workout of the day'."
      puts "Type wod for a list of this weeks wods."
    elsif input == "N"
      input = gets.strip
      puts "Do you like ice cream? (Enter: Y/N)"
      if input == "Y"
        puts "Culver's frozen custard flavor of the day is _____."
      elsif input == "N"
        puts "So, you don't like to exercise, nor do you like ice cream.  Who are you?"
      end
    end
    input = gets.strip
    if input == "wod"
      puts "Here is a list of the previous week's wods __________. Type the number of the wod for more specific information."
    elsif input != "wod"
      puts "Remember, to type wod for a list of this week's wods."
    end
    #will need to stub out the second level of interacting with the scraped data here
  end

end
