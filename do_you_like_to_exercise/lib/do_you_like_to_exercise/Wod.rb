
class Wod
  attr_accessor :day_and_date, :description
  @@all = []


  def initialize(day_and_date=nil, description=nil)
    @day_and_date = day_and_date
    @description = description
  end

  def self.scrape_days_and_dates
    day_and_date_array = []
    doc = Nokogiri::HTML(open("https://www.crossfit.com/workout"))
    doc.search("div.container-hybrid").each do |row|
      row.search("h3.hide a").each do |day|
        day_and_date_array << day.text
      end
    end
    day_and_date_array
  end 

  def self.scrape_descriptions
    description_array = []
    doc = Nokogiri::HTML(open("https://www.crossfit.com/workout"))
    doc.search("div.container-hybrid").each do |row|
      row.search("wherever the workouts are").each do |description|
         description_array << description.text
       end
     end
     description_array
  end






  def self.all
    @@all
  end

end
