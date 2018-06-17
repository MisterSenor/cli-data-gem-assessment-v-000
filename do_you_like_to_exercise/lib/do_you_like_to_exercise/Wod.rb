
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
    doc = Nokogiri::HTML(open("https://www.crossfit.com/workout"))
    doc.search("div.col-xs-12.col-sm-6.col-md-7.col-lg-7.content").each do |row|
      row.search("div.row").each do |description|
         new_wod = self.new(day_and_date=nil, description)
         @@all << new_wod
       end
     end
     @@all
  end







  def self.all
    @@all
  end

end
