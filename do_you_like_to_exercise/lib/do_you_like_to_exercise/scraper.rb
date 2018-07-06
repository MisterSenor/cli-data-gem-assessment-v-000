
class Scraper

  def scrape_wods
    @doc = Nokogiri::HTML(open("https://www.crossfit.com/workout"))
    @doc.search("div.container-hybrid>div.row").each do |workout|
      wod = Wod.new
      wod.url = workout.search("h3.hide a").attr("href").value
      wod.day_and_date = workout.search("h3.hide a").text
      wod.description = workout.search("div.col-xs-12.col-sm-6.col-md-7.col-lg-7.content div.row").text.strip
    end
  end

#This method of iteration doesn't save distinct workouts by day, it stores all of the info in one index of the @all array. How do I fix this?
end
