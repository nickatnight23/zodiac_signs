class ZodiacSigns::CLI

    def call
       list_signs
       menu
       goodbye
    end


    def list_signs
      puts "welcome to zodiac signs:"
       ZodiacSigns::Scraper.today
       signs = ZodiacSigns::Sign.all
      signs.each.with_index(1) do |sign, i|
        puts "#{i}. #{sign.sign} - #{sign.info} - #{sign.url}"
    end
   
    def menu
      input = nil
      while input != "exit"
      puts "enter the number for the sign you want more info on"
     input = gets.strip.downcase

     if input.to_> 0
      puts @signs [input.to_i-1]
     elsif input == "list"
      list_signs
     else
      puts "not sure what you want, type list or exit"
     end
    end
  end

    def goodbye
      puts "check out signs again tomorrow"
    end
  end
end
