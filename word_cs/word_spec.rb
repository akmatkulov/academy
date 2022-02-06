require 'rspec'
require './word.rb'

RSpec.describe "word_cs" do
  it "word_cs numbers" do
     expect(word_cs("seedCS")).to eq("Include 'CS': 64")
  end
  it "word_cs reverse" do
      expect(word_cs("seedcs")).to eq("scdees")
  end
end
