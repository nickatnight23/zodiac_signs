class ZodiacSigns::CLI
  attr_accessor :sign, :info, :url

    def call
      ZodiacSigns::Scraper.today
       list_signs
       menu
      #  goodbye

    end


    def list_signs
      puts "welcome to zodiac signs:"
      
       @signs = ZodiacSigns::Sign.all
      #  @@list = @signs
       @signs.each.with_index(1) do |sign, i|
        puts " #{i}. #{sign.sign} - #{sign.info} - #{sign.url}"
      end
    end
   
    def menu
      input = nil
      loop do
        puts "enter the number for the sign you want more info on"
        input = gets.strip.downcase
        break if input == "exit"


        if input.to_i> 0 && input.to_i <= ZodiacSigns::Sign.all.length
         show_sign(input)
       # puts @signs [input.to_i-1]
        elsif input == "list"
         list_signs
        else 
          puts "not sure what you want, type list or exit"
        end
     end
     goodbye
   end
    def show_sign(input)
      d = ZodiacSigns::Sign.find(input)
      puts "\n  SIGN:\n#{d.sign}\n\n  INFO:\n#{d.info}\n\n  WEBSITE:#{d.url}"
      puts "\n  To see more signs?\n  Enter a digit, please.\n  Or 'list' to see them all again.\n  Or 'exit' to leave.\n\n"
    end

    def goodbye
      puts "check out signs again tomorrow"
    end
end
