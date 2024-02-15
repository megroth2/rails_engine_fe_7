require "rails_helper"

RSpec.describe MerchantService do
  before(:each) do
    @service = MerchantService.new
  end

  it "exists" do
    expect(@service).to be_a(MerchantService)
  end
end