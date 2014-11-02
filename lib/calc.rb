module Calc
  def self.eval(string)
    string = string.gsub(/\s+/, '')
    if string =~ /\A\d+\z/
      string.to_i
    elsif string =~ /\A(\d+)(\D)(\d+)(.*)\z/
      left, op, right = $1.to_i, $2, $3.to_i
      result =
        case op
        when '+' then left + right
        when '-' then
          result = left - right
          result < 0 ? 0 : result
        when '*' then left * right
        when '/' then left / right
        end
      if $4 == ''
        result
      else
        eval(result.to_s + $4)
      end
    end
  end
end
