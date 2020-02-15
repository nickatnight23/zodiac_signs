        require_relative "../zodiac_signs.rb"

        class ZodiacSigns::Scraper
         attr_accessor :sign, :info, :url

          def self.today
              self.scraped_page
          end

           def self.scraped_page
            
            doc = Nokogiri::HTML(open("https://www.astrology.com/horoscope/daily.html"))
             horoscope = self.new
            container = doc.css('div.item')
             container.each do |c|
              sign = c.css("h2").text
              info = c.css("p").text
              url = c.css("a.more").first.attributes["href"].value
              new_sign = ZodiacSigns::Sign.new(sign, info,url)
              puts new_sign.sign
             end 
            end 
         end

           

        

             

