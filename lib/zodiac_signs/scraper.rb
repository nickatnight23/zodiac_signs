class ZodiacSigns::Scraper

    def get_page
        url ="http://zodiac-signs-astrology.com/"
        doc = Nokogiri::HTML(url)
        binding.pry
    end
    
    def scrape_sign_list
        
    end

end