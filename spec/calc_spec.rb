require 'rspec'
require 'calc'

describe 'My behaviour' do

  it 'should do something' do

    true.should == true
  end
end

RSpec.describe "A calc" do
  it "given 2 and 3 returns 5" do
    calc = Calc.new
    expect(calc.add(2, 3)).to eq(5)
  end
end