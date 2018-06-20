
class Wod
  attr_accessor :day_and_date, :description
  @@all = []

  def self.scrape_and_initialize_wods
    doc = Nokogiri::HTML(open("https://www.crossfit.com/workout"))
    doc.search("div.container-hybrid").each do |row|
      row.search("h3.hide a").each do |day|
        new_wod = self.new
        new_wod.day_and_date = day.text
        @@all << new_wod
      end
    end
    @@all
  end

  # def self.scrape_descriptions
  #   doc = Nokogiri::HTML(open("https://www.crossfit.com/workout"))
  #   doc.search("div.col-xs-12.col-sm-6.col-md-7.col-lg-7.content").each do |row|
  #     row.search("div.row").each do |workout_details|
  #        new_wod = self.new
  #        new_wod.description = workout_details.text
  #        @@all << new_wod
  #      end
  #    end
  #    @@all
  # end

  def self.all
    @@all
  end

end
