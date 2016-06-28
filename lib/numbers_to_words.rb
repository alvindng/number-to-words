class Fixnum
  define_method(:numbers_to_words) do
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

    divisions = ["Hundred", "Thousand", "Million", "Billion", "Trillion"]
    word = ""

    if (10..19).include?(self)
      word = teen.key(self)
    else
      digit_array = self.to_s.split('').map(&:to_i)
      if digit_array.length() == 7
        word += ones.key(digit_array[0]) + "million"
        word += ones.key(digit_array[1]) + "hundred"
        word += tens.key(digit_array[2])
        word += ones.key(digit_array[3]) + divisions[1]
        word += ones.key(digit_array[4]) + divisions[0]
        word += tens.key(digit_array[5])
        word += ones.key(digit_array[digit_array.length()])
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
