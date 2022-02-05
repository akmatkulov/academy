require 'rspec'
require './app.rb'

RSpec.describe "word_cs" do
  it "word_cs numbers" do
     expect(word_cs("seedcs")).to eq("Include 'cs': 64")
  end
  it "word_cs reverse" do
      expect(word_cs("select")).to eq("tceles")
  end
end
