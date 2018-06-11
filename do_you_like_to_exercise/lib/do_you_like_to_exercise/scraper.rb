

class Scraper

  def self.get_days_and_dates
    day_date_array = []
    doc = Nokogiri::HTML(open("https://www.crossfit.com/workout"))
    day_with_date = doc.search("h3.hide a")
    day_with_date.map do |day_date|
      day_date_array << day_date.text
    end
    day_date_array[0..6]
  end



  def self.get_wods
    wod_array = []
    doc = Nokogiri::HTML(open("https://www.crossfit.com/workout"))
    wods = doc.search("div.row div.col-sm-6")
    days = doc.search("div.col-xs-12 col-sm-6 col-m-7 col-lg-7 content")
    wod_count = wods.count
    day_count = days.count
    binding.pry

  end

  The number of div.col-sm-6 needs to be divided by the number of div.row that they have as a parent




end
