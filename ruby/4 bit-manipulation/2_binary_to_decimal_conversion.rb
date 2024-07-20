# Binar number to decimal numaber

def decimal_conversion(binary_num)
  len = binary_num.length - 1
   decim = 0
   pow = 1
  0..len.downto(0) do |char|
      decim += pow if(binary_num[char] == '1')
      pow = pow * 2
  end
  return decim
end

def opt_decimal_conversion(binary_str)
  decimal = 0
  length = binary_str.length
  # Iterate over each character in the binary string
  binary_str.each_char.with_index do |char, index|
    # Only process if the character is '1'
    if char == '1'
      # Calculate the position from the right
      position_from_right = length - index - 1
      # Update the decimal value
      decimal += 2 ** position_from_right
    end
  end

  decimal
end

# using predefined method

def pre_decimal_conversion(binary_num)
  binary_num.to_i(2)
end

puts decimal_conversion('1111')
puts opt_decimal_conversion('1111')
puts pre_decimal_conversion('1111')

