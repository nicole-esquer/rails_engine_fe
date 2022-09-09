class MerchantsController < ApplicationController 
   def index
      @merchants = MerchantsFacade.get_all_merchants
   end

   def show
      @merchant = MerchantsFacade.get_single_merchant(params[:id])
      @items = ItemsFacade.merchant_items(@merchant.id)
   end
end