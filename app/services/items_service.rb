class ItemsService < BaseService
   def self.get_merchant_items(merchant_id)
      end_point = "/api/v1/merchants/#{merchant_id}/items"
      response = local_connection.get(end_point)
      JSON.parse(response.body, symbolize_names: true)
   end
end