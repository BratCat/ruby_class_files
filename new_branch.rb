# FizzBuzz
# print numbers 1 to 100
# if number is a multiple of 3 print Fizz
# if number is a multiple of 5 print Buzz
# if number is a multiple of 3 and 5 print FizzBuzz

i = 0 
while i < 101
    if i%3 == 0 && i%5 == 0
        puts "FizzBuzz"
    elsif i%3 == 0
        puts "Fizz"
    elsif i%5 == 0
        puts "Buzz"
    else
        puts i
    end
    i+=1
end