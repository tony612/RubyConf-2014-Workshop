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
    expect(Calc.eval('1 + 2')).to be_eql 3
    expect(Calc.eval('11 + 22')).to be_eql 33
  end

  it "should eval minus" do
    expect(Calc.eval('1-1')).to be_eql 0
    expect(Calc.eval('1 - 1')).to be_eql 0
    expect(Calc.eval('11 - 11')).to be_eql 0
  end

  it "should eval multiply" do
    expect(Calc.eval('2*1')).to be_eql 2
    expect(Calc.eval('2 * 1')).to be_eql 2
    expect(Calc.eval('22 * 11')).to be_eql 242
  end

  it "should eval devide" do
    expect(Calc.eval('4/2')).to be_eql 2
    expect(Calc.eval('4 / 2')).to be_eql 2
    expect(Calc.eval('44 / 22')).to be_eql 2
    expect(Calc.eval('4/3')).to be_eql 1
    expect(Calc.eval('4 / 3')).to be_eql 1
    expect(Calc.eval('44 / 33')).to be_eql 1
  end
end
