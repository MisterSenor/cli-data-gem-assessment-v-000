
class Wod
  attr_accessor :day_and_date, :description
  @@all = []


  def initialize(day_and_date=nil, description=nil)
    @day_and_date = day_and_date
    @description = description
  end

  def self.scraper
    doc = Nokogiri::HTML(open("https://www.crossfit.com/workout"))
    wods = doc.search("section#archives.section")
    wods.each do |wod|
      day_and_date = wod
      description = wod.search("div.col-sm-6").text
      new_wod = self.new(day_and_date, description)
      @@all << new_wod
    end
      @@all
  end

  def self.all
    @@all
  end


  # wod_1 = self.new
  # wod_1.date = "06/01/18" #formatted 180601
  # wod_1.day = "Friday"
  # wod_1.description = "3 rounds for time of: 9 muscle-ups, 36-ft. handstand walk, 36-45-54 single-leg squats, 36-ft. handstand walk"
  #
  # wod_2 = self.new
  # wod_2.date = "05/31/18" #formatted 180531
  # wod_2.day = "Thursday"
  # wod_2.description = "Front squat 3-3-3 reps, Push press 3-3-3 reps, Thruster 3-3-3 reps"
  #
  # wod_3 = self.new
  # wod_3.date = "?"
  # wod_3.day = "?"
  # wod_3.description = "?"
  #
  # [wod_1, wod_2, wod_3]

end
