require 'rails_helper'

RSpec.describe "merchant show page" do
  xit "lists a given merchant's items", :vcr do
    visit "/merchants/1"

    expect(status_code).to eq(200)
  end
end