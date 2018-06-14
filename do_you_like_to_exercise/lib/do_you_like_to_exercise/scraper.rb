
class Scraper

  # def self.get_days_and_dates
  #   day_date_array = []
  #   doc = Nokogiri::HTML(open("https://www.crossfit.com/workout"))
  #   day_with_date = doc.search("h3.hide a")
  #   day_with_date.map do |day_date|
  #     day_date_array << day_date.text
  #   end
  #   day_date_array[0..6]
  # end



  def self.get_wods
    doc = Nokogiri::HTML(open("https://www.crossfit.com/workout"))
    wods = doc.search("section#archives.section")
    wods.each do |wod|
      day_and_date = wod.search("h3.hide a").text
      description = wod.search("div.col-sm-6").text
      Wod.new(day_and_date, description)
      # Wod.new_from_index_page(wod)
    end
  end




end
