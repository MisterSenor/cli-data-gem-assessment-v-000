
class Culvers_scraper
  attr_accessor :name

  def flavor_scraper
    @doc = Nokogiri::HTML(open("https://www.culvers.com/restaurants/highland-in"))
    name = @doc.search("div.ModuleRestaurantDetail-fotd h2 strong").text
  end

end
