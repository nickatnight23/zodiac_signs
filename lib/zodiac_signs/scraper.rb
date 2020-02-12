require_relative "../zodiac_signs.rb"
class ZodiacSigns::Scraper

    def self.get_page
        url ="http://zodiac-signs-astrology.com/"
        doc = Nokogiri::HTML(url)
        binding.pry
    end
    
    def scrape_sign_list
        
    end



end
ZodiacSigns::Scraper.get_page