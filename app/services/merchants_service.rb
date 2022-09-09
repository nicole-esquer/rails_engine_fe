class MerchantsService < BaseService
   def self.get_merchants
      end_point = '/api/v1/merchants'
      response = local_connection.get(end_point)
      JSON.parse(response.body, symbolize_names: true)
   end

   def self.get_merchant_details(merchant_id)
      end_point = "/api/v1/merchants/#{merchant_id}"
      response = local_connection.get(end_point)
      JSON.parse(response.body, symbolize_names: true)
   end
end