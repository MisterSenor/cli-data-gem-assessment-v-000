
class Wod
  attr_accessor :day_and_date, :description, :url
  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

end
