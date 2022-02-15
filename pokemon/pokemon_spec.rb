require 'rspec'
require './pokemon.rb'

RSpec.describe "add_pokemon" do
  it "add_pokemon name color" do
     expect(add_pokemon('Pickachu', 'yellow')).to eq({ name: 'Pickachu', color: 'yellow' })
  end
end
