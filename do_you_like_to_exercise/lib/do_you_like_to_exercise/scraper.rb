
class Scraper

  def self.scrape_wods
    @doc = Nokogiri::HTML(open("https://www.crossfit.com/workout"))
    @doc.search("section#archives.section").each do |wod|
      url = wod.search("h3.hide a").attr("href")
      day_and_date = wod.search("h3.hide a").text
      description = wod.search("div.col-xs-12.col-sm-6.col-md-7.col-lg-7.content div.row").text
      binding.pry
    end
  end


end
