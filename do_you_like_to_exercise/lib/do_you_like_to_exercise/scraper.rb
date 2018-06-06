

class Scraper

  def self.get_days_and_dates
    doc = Nokogiri::HTML(open("https://www.crossfit.com/workout"))
    day_with_date = doc.search("h3.show").text
#     #How do I split this string? "Wednesday 180606Tuesday 180605Monday 180604Sunday 180603Saturday 180602Friday 180601Thursday 180531Wednesday 180530Tuesday 180529Monday 180528Sun
# day 180527Saturday 180526Friday 180525Thursday 180524Wednesday 180523Tuesday 180522Monday 180521Sunday 180520Saturday 180519Friday 180518Thursday 1805
# 17Wednesday 180516Tuesday 180515Monday 180514Sunday 180513Saturday 180512Friday 180511Thursday 180510Wednesday 180509Tuesday"
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
