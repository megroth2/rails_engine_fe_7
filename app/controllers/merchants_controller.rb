class MerchantsController < ApplicationController
  # def index
  #   conn = Faraday.new(url: "http://localhost:3000/")

  #   response = conn.get("api/v1/merchants")

  #   json = JSON.parse(response.body, symbolize_names: true)

  #   @merchants = json[:data]
  # end

  # def show
  #   conn = Faraday.new(url: "http://localhost:3000/")

  #   response = conn.get("api/v1/merchants/#{params[:id]}/items")

  #   json = JSON.parse(response.body, symbolize_names: true)

  #   @items = json[:data]
  # end

  def index
    @facade = MerchantFacade.new
    @merchants = @facade.get_merchants
  end

  def show
    @facade = MerchantFacade.new(params[:id])
    @items = @facade.get_merchant_items(params[:id])
  end
end