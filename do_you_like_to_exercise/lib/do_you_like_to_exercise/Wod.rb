
class Wod
  attr_accessor :date, :day, :title, :description
  @@all = []

  def initialize(date = nil, day = nil, title = nil, description = nil)
    @date = date 
    @day = day 
    @title = title 
    @description = description 
    @@all << self 
  end 
  

  wod_1 = self.new
  wod_1.date = "06/01/18" #formatted 180601
  wod_1.day = "Friday"
  wod_1.title = "Regional Event 3"
  wod_1.description = "3 rounds for time of: 9 muscle-ups, 36-ft. handstand walk, 36-45-54 single-leg squats, 36-ft. handstand walk"

  wod_2 = self.new
  wod_2.date = "05/31/18" #formatted 180531
  wod_2.day = "Thursday"
  wod_2.title = "No title"
  wod_2.description = "Front squat 3-3-3 reps, Push press 3-3-3 reps, Thruster 3-3-3 reps"

  wod_3 = self.new
  wod_3.date = "?"
  wod_3.day = "?"
  wod_3.title = "?"
  wod_3.description = "?"

  [wod_1, wod_2, wod_3]

end