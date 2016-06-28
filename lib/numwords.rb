class Fixnum
  define_method(:numwords) do
    ones = Hash.new()
    ones.store("one", 1)
    ones.store("two", 2)
    ones.store("three", 3)
    ones.store("four", 4)
    ones.store("five", 5)
    ones.store("six", 6)
    ones.store("seven", 7)
    ones.store("eight", 8)
    ones.store("nine", 9)
    teen = Hash.new()
    teen.store("ten", 10)
    teen.store("eleven", 11)
    teen.store("twelve", 12)
    teen.store("thirteen", 13)
    teen.store("fourteen", 14)
    teen.store("fifteen", 15)
    teen.store("sixteen", 16)
    teen.store("seventeen", 17)
    teen.store("eighteen", 18)
    teen.store("nineteen", 19)
    tens = Hash.new()
    tens.store("twenty", 2)
    tens.store("thirty", 3)
    tens.store("forty", 4)
    tens.store("fifty", 5)
    tens.store("sixty", 6)
    tens.store("seventy", 7)
    tens.store("eighty", 8)
    tens.store("ninety", 9)

    word = ""

    if (10..19).include?(self)
      word = teen.key(self)
    else
      digit_array = self.to_s.split('').map(&:to_i)
      if digit_array.length() == 8
        word += ones.key(digit_array[0]) + " "
        word += " " + ones.key(digit_array[1]) + "million "
        word += " " + tens.key(digit_array[2]) + "hundred "
        word += " " + ones.key(digit_array[3])
        word += " " + ones.key(digit_array[4]) + "thousand "
        word += " " + tens.key(digit_array[5]) + "hundred "
        word += " " + ones.key(digit_array[6]) + " "
        word += " " + ones.key(digit_array[7]) + " "
      end
      if digit_array.length() == 7
        word += ones.key(digit_array[0]) + " million"
        word += " " + ones.key(digit_array[1]) + " hundred"
        word += " " + tens.key(digit_array[2])
        word += " " + ones.key(digit_array[3]) + " thousand"
        word += " " + ones.key(digit_array[4]) + " hundred"
        word += " " + tens.key(digit_array[5])
        word += " " + ones.key(digit_array[6])
      end
      if digit_array.length() == 6
        word += ones.key(digit_array[0]) + "hundred"
        word += tens.key(digit_array[1])
        word += ones.key(digit_array[2]) + "thousand"
        word += ones.key(digit_array[3]) + "hundred"
        word += tens.key(digit_array[4])
        word += ones.key(digit_array[5])
      end
      if digit_array.length() == 5
        word += tens.key(digit_array[0])
        word += ones.key(digit_array[1]) + "thousand"
        word += ones.key(digit_array[2]) + "hundred"
        word += tens.key(digit_array[3])
        word += ones.key(digit_array[4])
      end
      if digit_array.length() == 4
        word += ones.key(digit_array[0]) + "thousand"
        word += ones.key(digit_array[1]) + "hundred"
        word += tens.key(digit_array[2])
        word += ones.key(digit_array[3])
      end
      if digit_array.length() == 3
        word += ones.key(digit_array[0]) + "hundred"
        word += tens.key(digit_array[1])
        word += ones.key(digit_array[2])
      end
      if digit_array.length() == 2
        word += tens.key(digit_array[0])
        word += ones.key(digit_array[1])
      end
      if digit_array.length() == 1
        word += ones.key(digit_array[0])
      end
    end

    return word
  end
end




class Fixnum
  define_method(:numwords) do
    ones = Hash.new()
    ones.store("one", 1)
    ones.store("two", 2)
    ones.store("three", 3)
    ones.store("four", 4)
    ones.store("five", 5)
    ones.store("six", 6)
    ones.store("seven", 7)
    ones.store("eight", 8)
    ones.store("nine", 9)
    teen = Hash.new()
    teen.store("ten", 10)
    teen.store("eleven", 11)
    teen.store("twelve", 12)
    teen.store("thirteen", 13)
    teen.store("fourteen", 14)
    teen.store("fifteen", 15)
    teen.store("sixteen", 16)
    teen.store("seventeen", 17)
    teen.store("eighteen", 18)
    teen.store("nineteen", 19)
    tens = Hash.new()
    tens.store("twenty", 2)
    tens.store("thirty", 3)
    tens.store("forty", 4)
    tens.store("fifty", 5)
    tens.store("sixty", 6)
    tens.store("seventy", 7)
    tens.store("eighty", 8)
    tens.store("ninety", 9)
    word = ""

    singles = []
    thousands = []
    millions = []
    billions = []
    trillions = []

    num = self
    singles = singles.push(num%1000)
    thousands.push((num/1000)%1000)
    millions.push((num/1000000)%1000)
    billions.push((num/1000000000)%1000)
    trillions.push((num/1000000000000)%1000)

        word += ones.key(trillions[0])
        word += tens.key(trillions[1])
        word += ones.key(trillions[2])
        word += ones.key(billions[0])
        word += tens.key(billions[1])
        word += ones.key(billions[2])
        word += ones.key(millions[0])
        word += tens.key(millions[1])
        word += ones.key(millions[2])
        word += ones.key(thousands[0])
        word += tens.key(thousands[1])
        word += ones.key(thousands[2])
        word += ones.key(singles[0])
        word += tens.key(singles[1])
        word += ones.key(singles[2])
    return word
  end
end

111234567890123
