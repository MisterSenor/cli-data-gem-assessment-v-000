
class Wod
  attr_accessor :day_and_date, :description
  @@all = []

  def save
    @@all << self
  end

  def self.all
    @@all
  end

end
