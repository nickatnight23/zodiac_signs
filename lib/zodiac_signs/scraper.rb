    require_relative "../zodiac_signs.rb"
    class ZodiacSigns::Scraper

        def self.scraped_page
        doc = Nokogiri::HTML(open("https://www.astrology.com/horoscope/daily.html"))
         container = doc.css('div.item')
         container.each do |c|
        sign = c.css("h2").text
        info = c.css("p").text
        url = c.css("a.more").first.attributes["href"].value
         end  
         Zodiacsign.new(sign, info, url)
        end
    end 
             

