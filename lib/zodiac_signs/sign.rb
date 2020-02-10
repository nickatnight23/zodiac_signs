class ZodiacSigns::Sign
    attr_accessor :name

    @@ll = []


    def initialize (attr_hash)
        attr_hash.each do |k,v|
            self.send(("#{k}="), v) if self.respond_to?("#{k}=")
        # self.send(("#{key}="), value)
        end
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

   