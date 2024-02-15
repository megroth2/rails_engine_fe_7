require "rails_helper"

RSpec.describe MerchantService do
  before(:each) do
    @service = MerchantService.new
  end

  it "exists" do
    expect(@service).to be_a(MerchantService)
  end

  xit "returns merchants data", :vcr do
    merchants = @service.get_merchants

    expect(merchants).to be_a(Hash)
    expect(merchants[:results]).to be_an(Array)

    merchant = merchants[:results].first

    expect(merchant).to have_key(:name)
    expect(merchant[:name]).to be_a(String)
  end

  xit "returns merchant's items", :vcr do
    items = @service.get_merchant_items(id) # how do I pass in the id?

    expect(items).to be_a(Hash)
    expect(items[:results]).to be_an(Array)

    item = items[:results].first

    expect(item).to have_key(:name)
    expect(item[:name]).to be_a(String)

    expect(item).to have_key(:merchant_id)
    expect(item[:merchant_id]).to be_a(Integer)
    expect(item[:merchant_id]).to eq(id)
  end
end