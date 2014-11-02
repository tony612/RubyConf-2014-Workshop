require 'rspec'
require 'calc'

describe 'calc' do

  it 'should eval 2 to 2' do
    expect(Calc.eval('2')).to be_eql 2
  end

  it 'should eval 22 to 22' do
    expect(Calc.eval('22')).to be_eql 22
  end

  it "should eval plus" do
    expect(Calc.eval('1+2')).to be_eql 3
  end

  it "should eval minus" do
    expect(Calc.eval('1-1')).to be_eql 0
  end

  it "should eval multiply" do
    expect(Calc.eval('2*1')).to be_eql 2
  end
end
