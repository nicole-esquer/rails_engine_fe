class BaseService 
   def self.local_connection
      url = 'http://localhost:3000'
      Faraday.new(url: url)
   end
end