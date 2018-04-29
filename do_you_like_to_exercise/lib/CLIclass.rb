
class CLIclass

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
          Crossfit_beginner_scraper #need to define this class
        when "I"
          Crossfit_intermediate_scraper #need to define this class
        when "A"
          Crossfit_advanced_scraper
        when "N"
          puts "Do you like ice cream? (Enter: 'Yes'/'No')"
        when "Yes"
          Culvers_flavor_scraper
        when "No"
          puts "I'm really sorry.  You don't like ice cream OR exercise.  Your life must be very difficult.  Type 'exit' to exit."
        end
      end
    end
          
end
