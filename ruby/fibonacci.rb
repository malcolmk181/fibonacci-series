def fibonacci(num)
  # type your code in here
  case num
  when 0
    return 0
  when 1
    return 1
  else
    return fibonacci(num-1) + fibonacci(num-2)
  end
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 0"
  puts "=>", fibonacci(0)

  puts

  puts "Expecting: 1"
  puts "=>", fibonacci(2)

  puts

  puts "Expecting: 55"
  puts "=>", fibonacci(10)

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution

# Given an index n, of 0 or greater, return the nth number
# in the fibonacci sequence
# each number in the fibonacci sequence is the sum of the
# previous two numbers. the fibonacci sequence starts with
# n = 0 -> 0
# n = 1 -> 1
# with each following number being the sum of the previous
# two

# psuedo code

# one way i can approach this is via recursion
# since each number is the sum of the previous two,
# fibonacci(5) is equal to fibonacci(3) + fibonacci(4)

# in my function I can test if the input is 0 or 1, and
# if so return 0 or 1
# if not, then i'll return fibonacci (n-1) + fibonacci(n-2)