class MerchantFacade
  attr_reader :name, :merchant_id, :merchants, :items # not sure if I need all of these

  def initialize
  end
  
  def get_merchants
    service = MerchantService.new # create a new movie service
    json = service.get_merchants # use the method in the service to make an api request
    @merchants = json[:results].map do |merchant_data| # create merchant poros using the json response data and store them in a @merchants array
      Merchant.new(merchant_data)
    end
  end

  def get_merchant_items(merchant_id)
    service = MerchantService.new
    json = service.get_merchant_items(merchant_id)

    @items = json[:results].map do |item_data|
      Item.new(item_data)
    end
  end
end