class ZodiacSigns::CLI

    def call
       puts "Hi user"
       puts "To see Zodiac list, enter 'zodiac'"
       puts "To exit, enter 'exit'"
       menu
    end


    def menu
      input = gets.strip.downcase

      if input == "zodiac"
        zodiac_list
        menu
      elsif input == "exit"
         goodbye
      else
        invalid_entry
      end
    end
  end

      def zodiac_list
        ZodiacSigns::Sign.all.each_with_index do |sign, index|
          puts "#{index + 1}. #{sign.name}"
          Puts "capriorn"
        puts ""
        puts""
        puts "pick your horoscope"
        input = gets.strip.downcase

        zodiac_selection(input)
      end

      def zodiac_selection(zodiacsign)
        sign = zodiacsign.find_by_name(zodiac)
        sign.each do |s|
      end


      def goodbye
       puts "goodbye, have a good day"
     end

    def invalid_entry
       puts "invalid entry, try again"
       menu
   end
 end
end

   