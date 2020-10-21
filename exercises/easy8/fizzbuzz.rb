def fizzbuzz(start_num, end_num)
  while start_num <= end_num
    if start_num % 5 == 0 && start_num % 3 == 0
      print "FizzBuzz"
    elsif start_num % 5 == 0
      print "Buzz, "
    elsif start_num % 3 == 0
      print "Fizz, "
    else
      print "#{start_num}, " 
    end

    start_num += 1
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz