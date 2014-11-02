module Calc
  def self.eval(string)
    string = string.gsub(/\s+/, '')
    if string =~ /\A\d+\z/
      string.to_i
    elsif string =~ /\A(\d+\D\d+)(.*)\z/
      result = eval_unit($1)
      if $2 == ''
        result
      else
        eval(result.to_s + $2)
      end
    end
  end

  def self.eval_unit(string)
    if string =~ /\A(\d+)(\D)(\d+)\z/
      left, op, right = $1.to_i, $2, $3.to_i
      case op
      when '+' then left + right
      when '-' then
        result = left - right
        result < 0 ? 0 : result
      when '*' then left * right
      when '/' then left / right
      end
    end
  end
end
