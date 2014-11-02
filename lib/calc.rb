module Calc
  def self.eval(string)
    string = string.gsub(/\s+/, '')
    if string =~ /\A\d+\z/
      string.to_i
    elsif string =~ /\A(\d+)(\D)(\d+)(.*)\z/
      left, op, right = $1.to_i, $2, $3.to_i
      case op
      when '+' then left + right
      when '-' then left - right
      when '*' then left * right
      when '/' then left / right
      end
    end
  end
end
