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

def fibonacci_loop(num)
  num1 = 0
  num2 = 1

  if [0,1].include?(num) then return num; end

  (num-1).times do |n|
    val = num1 + num2
    num1 = num2
    num2 = val
  end

  return num2
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

# pseudo code

# one way i can approach this is via recursion
# since each number is the sum of the previous two,
# fibonacci(5) is equal to fibonacci(3) + fibonacci(4)

# in my function I can test if the input is 0 or 1, and
# if so return 0 or 1
# if not, then i'll return fibonacci (n-1) + fibonacci(n-2)

# more thoughts 

# If i didn't want to do recursion (maybe in fear of "blowing
# out the stack"), then I could also create an array, or a couple
# variables, and simply compute from 0. Starting at 0, then
# overwriting the variables until I got to the desired number.
# this would be a simple for loop, and use very little memory


