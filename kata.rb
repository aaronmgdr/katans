class Kata
  def fizzbuzz
    100.times.each do |n|  
      case 
      when n%3 == 0 && n%5 == 0
        puts "fizz buzz"
      when n%3 == 0 
        puts "fizz"
      when n%5 == 0
        puts "buzz"
      else
        puts n
      end
    end
  end
  def romanize(arabic)
    return unless arabic.kind_of? Integer

    single = {1 => 'I', 2 => 'II', 3 => 'III', 4 => 'IV', 5 => 'V', 6 => "VI", 7 => "VII", 8 => "VIII", 9 => 'IX'}
    double = {1 => 'X', 2 => 'XX', 3 => 'XXX', 4 => 'XL', 5 => 'L', 6 => "LX", 7 => "LXX", 8 => "LXXX", 9 => 'XC'}
    triple = {1 => 'C', 2 => 'CC', 3 => 'CCC', 4 => 'CD', 5 => 'D', 6 => "DC", 7 => "DCC", 8 => "DCCC", 9 => 'CM'}
    quatro = {1 => 'M', 2 => 'MM', 3 => 'MMM'}
     
    ones = arabic % 10
    roman = "#{single[ones]}"

    if arabic > 9
      tens = ((arabic - ones)%100)/10 
      roman = "#{double[tens]}#{single[ones]}"
      if arabic > 99
        hundreds = ((arabic - tens - ones)%1000)/100 
        roman = "#{triple[hundreds]}#{double[tens]}#{single[ones]}"
        if arabic > 999
          thousands = ((arabic - hundreds - tens - ones)%10000)/1000 
          roman = "#{quatro[thousands]}#{triple[hundreds]}#{double[tens]}#{single[ones]}"
          if arabic > 3999
            return "Error C'est Impossible"
          end
        end
      end
    end   
   return roman
  end
end
