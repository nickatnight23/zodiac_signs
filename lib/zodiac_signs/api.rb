require_relative "../zodiac_signs.rb"
class ZodiacSigns::API

    def self.get_info
        response = RestClient.get("https://json.astrologyapi.com/v1/sun_sign_prediction/daily/previous/:zodiacName")
        sign_array = JSON.parse(response.body)["results"]
        sign_array.each do |zodiacsign|
        sign.new(zodiacsign)

        binding.pry
    end
 end
end

ZodiacSigns::API.get_info