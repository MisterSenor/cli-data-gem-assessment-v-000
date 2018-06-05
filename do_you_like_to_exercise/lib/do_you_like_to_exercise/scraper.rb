

class Scraper

  def self.get_page
    doc = Nokogiri::HTML(open("https://www.crossfit.com/workout"))
    day_with_date = doc.search("h3.hide").text
    name = doc.search("div.col-sm-6 p strong").text #this is returning waaaay more than what I want.  I'm going to have to save these nodes into an array and pull out what I need, I think.
  end

  def day_with_date
    self.get_page
    day_of_the_week_and_date = doc.search("h3.hide").text
    day_of_the_week_and_date[0..6]
    binding.pry
  end


  # def scrape_wods_index
  #   self.get_page.css("div#col-xs-12 col-sm-6 col-md-7 col-lg-7 content")
  # end
  #
  # def make_wods
  # end

end
