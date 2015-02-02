require 'rspec'
require 'calc'

RSpec.describe Calc do
  it {
    calc = Calc.new
    expect(calc.add(10, 5)).to eq(15)
    expect(calc.add(10, 5)).not_to eq(13)
    expect(calc.add(10, 5) == 15).to be true
    expect(calc.add(10, 5) == 17).to be false
    expect(calc.add(10, 5)).to be > 10
    expect(calc.add(10, 5)).to be_between(1, 15).inclusive
    expect(calc).to respond_to(:add)
    expect(calc.add(10, 5).integer?).to be true
    expect(calc.add(10, 5)).to be_integer
  }
end
