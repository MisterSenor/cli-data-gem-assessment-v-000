

class Scraper

  def self.get_days_and_dates
    doc = Nokogiri::HTML(open("https://www.crossfit.com/workout"))
    day_with_date = doc.search("h3.show").text
    day_and_date_array = day_with_date.split(" ")
    day_and_date_array.collect do |i|
      i
    end
  end



  def self.get_wods
    doc = Nokogiri::HTML(open("https://www.crossfit.com/workout"))
    wods = doc.search("div.col-sm-6 p strong").text
  end


  #I KEEP GETTING THIS ERROR WHEN I TRY TO RUN THE DAY_WITH_DATE METHOD IN THE CONSOLE: Scraper.day_with_date
# NoMethodError: undefined method `day_with_date' for Scraper:Class
#         from (irb):2
#         from ./console:13:in `<main>'


  # def scrape_wods_index
  #   self.get_page.css("div#col-xs-12 col-sm-6 col-md-7 col-lg-7 content")
  # end
  #
  # def make_wods
  # end

end
