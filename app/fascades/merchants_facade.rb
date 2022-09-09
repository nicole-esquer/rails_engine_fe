class MerchantsFacade 
   def self.get_all_merchants
      json = MerchantsService.get_merchants

      json[:data].map do |merchant|
         Merchant.new(merchant)
      end
   end

   def self.get_single_merchant(merchant_id)
      json = MerchantsService.get_merchant_details(merchant_id)
      Merchant.new(json[:data])
   end
end