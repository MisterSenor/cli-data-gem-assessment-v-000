
class Wod
  attr_accessor :day_and_date, :description
  @@all = []


  def initialize(day_and_date=nil, description=nil)
    @day_and_date = day_and_date
    @description = description
  end

  def self.scraper
    doc = Nokogiri::HTML(open("https://www.crossfit.com/workout"))
    wod_array = []
    doc.css("section#archives.section").each do |wod|
      wod_hash = {}
      wod_hash[:day_and_date] = wod.css("h3.hide a").text
      wod_hash[:description] = wod.css("div.col-sm-6").text
      wod_array << wod_hash #Now you have an array of hashes
    end
      wod_array
    end

  # def self.scrape_index_page(index_url)
  #   doc = Nokogiri::HTML(open(index_url))
  #   student_array = []
  #   doc.css("div.roster-cards-container").each do |people|
  #     people.css(".student-card").each do |person|
  #     student = {}
  #     student[:name] = person.css("div h4.student-name").text
  #     student[:location] = person.css("p.student-location").text
  #     student[:profile_url] = person.css("a").attribute("href").value
  #     student_array << student
  #       end
  #     end
  #     student_array
  #   end


  def self.all
    @@all
  end

end
