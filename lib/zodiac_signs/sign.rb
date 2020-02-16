class ZodiacSigns::Sign
    attr_accessor :sign, :url, :info

    @@all = []




    def initialize (sign, info, url)
        @sign = sign
        @url = url
        @info = info

        save
    end
    
    def save
        @@all << self
    end

    def self.all
        @@all 
    end

    def self.find(input)
        self.all[input.to_i - 1]
     end
    

    # def self.find_by_name(input)
    #     self.all.select do |sign|
    #         sign.sign == sign
    #     end
    # end

end 

   