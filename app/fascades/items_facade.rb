class ItemsFacade 
   def self.merchant_items(merchant_id)
      json = ItemsService.get_merchant_items(merchant_id)

      json[:data].map do |item|
         Item.new(item)
      end
   end
end