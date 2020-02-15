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

    def self.find_by_name(name)
        self.all.select do |sign|
            sign.name == name
        end
    end

end 

   