
class CLIclass

  def initialize
  end

  def call
    puts "Hello.  Do you like to exercise? (Enter: Y/N)"
    input = nil
      while input != "exit"
        input = gets.strip
        if input == "Y"
          puts "How would you characterize your fitness level?  Type 'B' for beginner, 'I' for intermediate, and 'A' for Advanced."

end
