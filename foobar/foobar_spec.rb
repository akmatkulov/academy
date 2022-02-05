require 'rspec'
require './foobar.rb'

RSpec.describe "Foobar methods" do
  it "foobar numbers" do
     expect(foobar(12, 15)).to eq(27)
   end
  it "foobar numbers first number == 20" do
     expect(foobar(20, 15)).to eq(15)
   end
  it "foobar numbers second number == 20" do
    expect(foobar(12, 20)).to eq(20)
  end
end
