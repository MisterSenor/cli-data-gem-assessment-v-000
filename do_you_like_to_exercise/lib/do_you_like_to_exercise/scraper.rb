

class Scraper

  def self.get_page
    doc = Nokogiri::HTML(open("https://www.crossfit.com/workout"))
    day_with_date = doc.search("h3.hide").text
  end

  day = doc.search("h3.hide").text

  # def scrape_wods_index
  #   self.get_page.css("div#col-xs-12 col-sm-6 col-md-7 col-lg-7 content")
  # end
  #
  # def make_wods
  # end

end

# class WorldsBestRestaurants::Scraper
#
#   def get_page
#     Nokogiri::HTML(open("https://www.theworlds50best.com/list/1-50-winners"))
#   end
#
#   def scrape_restaurants_index
#      self.get_page.css("div#t1-50 li")
#   end
#
#   def make_restaurants
#     scrape_restaurants_index.each do |r|
#       WorldsBestRestaurants::Restaurant.new_from_index_page(r)
#     end
#   end
# end
