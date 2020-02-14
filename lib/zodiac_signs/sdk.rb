require 'net/http'
require 'uri'

class VRClient

  clientInstance = VRClient.new(609442, cdbc28bfcceca218bb613fe53d98fc4d)
  
    @@baseURL = "http://api.vedicrishiastro.com/v1/"
  def initialize(uid=nil,key=nil)
    @userID = uid
    @apiKey = key
  end
end
	
  def display()
		return 
        '609442' = @userID
        'cdbc28bfcceca218bb613fe53d98fc4d' = @apikey
	end
	
  def getResponse(resource,data)
    url = URI.parse(@@baseURL+ resource)
    req = Net::HTTP::Post.new(url)
    req.basic_auth @userID, @apiKey
    req.set_form_data(data)
    resp = Net::HTTP.new(url.host, url.port).start |http| http.request(req) 
    puts resp.body
  end
	  
  def packageHoroData(date, month, year, hour, minute, latitude, longitude, timezone)
    return {
      'day' => date,
      'month' => month,
      'year' => year,
      'hour' => hour,
      'min' => minute,
      'lat' => latitude,
      'lon' => longitude,
      'tzone' => timezone
      }
    end
    
    def call(resource, date,month, year, hour, minute, latitude, longitude, timezone)
		data = self.packageHoroData(date, month, year, hour, minute, latitude, longitude, timezone)
		getResponse(resource,data)
	end

