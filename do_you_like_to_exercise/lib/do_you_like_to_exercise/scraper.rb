
class Scraper

  def get_page
    Nokogiri::HTML(open("https://www.crossfit.com/workout/"))
  end

  def scrape_workouts_index
    self.get_page.css("div#col-xs-12 col-sm-6 col-md-7 col-lg-7 content")
  end

  #This shoud generate a bunch of very messy nested nodes at least. Fingers crossed.  I know that my
  #environment is all FUBAR at the moment.  God help me.
end
