require 'rspec'
require 'calc'

describe 'My behaviour' do

  it 'should do something' do

    expect(true).to eq(true)
  end
end

RSpec.describe "A calc" do
  before do
    @calc = Calc.new
  end
  it "given 2 and 3 returns 5" do
    expect(@calc.add(2, 3)).to eq(5)
  end
  it "given 5 and 8 returns 13" do
    expect(@calc.add(5, 8)).to eq(13)
  end
end

RSpec.describe Calc do
  context "when normal mode" do
    it "given 2 and 3 returns 5" do
      calc = Calc.new
      expect(calc.add(2, 3)).to eq(5)
    end
  end
  context "when graph mode" do
    it "draws graph" do
    end
  end
end

RSpec.describe Calc do
  it {
    calc = Calc.new
    expect(calc.add(10, 5)).to eq(15)
  }
  it {
    calc = Calc.new
    expect(calc.add(10, 5)).not_to eq(19)
  }
  it "draws graph"
end
