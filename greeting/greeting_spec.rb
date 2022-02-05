require 'rspec'
require './hello.rb'

RSpec.describe "greeting methods" do
  it "greeting age < 18" do
    expect(greeting("Jessie", "Pinkman", 17)).to eq "Привет. Jessie Pinkman. Тебе меньше 18 лет, но начать учиться программировать никогда не рано"
  end

  it "greeting age > 18" do
    expect(greeting("Jessie", "Pinkman", 26)).to eq "Привет. Jessie Pinkman. Самое время занятся делом"
  end
end
