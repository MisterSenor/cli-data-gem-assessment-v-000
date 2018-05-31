
class Cli 

  def initialize
  end

  def call
    puts "Hello.  Do you like to exercise? (Enter: Y/N)"
    input = nil
      while input != "exit"
        input = gets.strip
        case input
        when "Y"
          puts "How would you characterize your fitness level?  Type 'B' for beginner, 'I' for intermediate, and 'A' for Advanced."
        when "B"
          puts "10 push ups"#Crossfit_beginner_scraper, use some hard-coded data before you move on to scraped data
        when "I"
          puts "10 pushups and 10 double unders, AMRAP" #Crossfit_intermediate_scraper, use some hard-coded data before you move on to scraped data
        when "A"
          puts "Murder your face off with an insane workout, AMRAP" #Crossfit_advanced scraper, use some hard-coded data before you move on to scraped data
        when "N"
          puts "Do you like ice cream? (Enter: 'Yes'/'No')"
        when "Yes"
          puts "Culvers flavor of the day is: 'Andes Mint Avalance'" #Culvers_flavor_scraper, use some hard-coded strings until you write your scraper
        when "No"
          puts "I'm really sorry.  You don't like ice cream OR exercise.  What do you like?"
        when !"exit" && !"Y" && !"B" && !"I" && !"A" && !"N" && !"Yes" && !"No"
          puts "Well, at least you like SOMETHING!  Type 'exit' to exit."
        end
      end
    end

end
