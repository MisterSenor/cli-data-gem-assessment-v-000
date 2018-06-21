
class Scraper

  def scrape_wods
    @doc = Nokogiri::HTML(open("https://www.crossfit.com/workout"))
    @doc.search("section#archives.section").each do |workout|
    wod = Wod.new 
    wod.url = workout.search("h3.hide a").attr("href")
    wod.day_and_date = workout.search("h3.hide a").text
    wod.description = workout.search("div.col-xs-12.col-sm-6.col-md-7.col-lg-7.content div.row").text
    wod.save
    end
  end


end
