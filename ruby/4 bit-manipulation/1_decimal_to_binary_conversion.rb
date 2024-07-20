# find the binary digit of the given number

# self code
def binary_form(num)
  binary = ''
  while(num > 0)
    if (num % 2) == 1
      binary += '1'
    else
      binary += '0'
    end
    num = num/2
  end
  return binary.reverse
end

# optimize code chatgpt
def opt_binary_form(num)
  binary = ''
  while(num > 0)
    binary = ((num % 2) == 1 ? '1' : '0') + binary
    num = num/2
  end
  return binary
end

# using predefined function

def pre_binary_form(num)
  num.to_s(2)
end



puts binary_form(5)  # 101
puts opt_binary_form(5)  # 101
puts pre_binary_form(5)  # 101