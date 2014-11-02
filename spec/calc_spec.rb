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

  it "should return 0 when minus result is less than 0" do
    expect(Calc.eval('3-5')).to be_eql 0
    expect(Calc.eval('4-10')).to be_eql 0
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

  it "hanlde multi numbers" do
    expect(Calc.eval("1+1+1")).to be_eql 3
    expect(Calc.eval("1+1+1+1")).to be_eql 4
    expect(Calc.eval("1-2-1-1")).to be_eql 0
    expect(Calc.eval("3*2*2")).to be_eql 12
    expect(Calc.eval("3*2*2*2")).to be_eql 24
  end

  it "hanlde multi numbers" do
    expect(Calc.eval("1+1-1")).to be_eql 1
    expect(Calc.eval("1+1-1-1")).to be_eql 0
    expect(Calc.eval("1-2+1+1")).to be_eql 2
    expect(Calc.eval("3/2*2")).to be_eql 2
    expect(Calc.eval("3*2/2*2")).to be_eql 6
  end
end
