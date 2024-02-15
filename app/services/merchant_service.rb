class MerchantService

  def conn # set up a new api connection
    Faraday.new(url: "http://localhost:3000/")
  end

  def get_url(url) # make a request, passing in the url
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def get_merchants
    get_url("api/v1/merchants")
  end

  def get_merchant_items(id)
    get_url("api/v1/merchants/#{id}/items")
  end
end