require 'rspec'
require 'index.rb'


RSpec.describe "Index test" do
  let(:string) do
    STRING
    Hello
    Goodbye
    STRING
  end

  before {File.write(TEXTFILE, string)}

  it '#index' do
    expect(index).to output(string).to_stdout
  end
end
