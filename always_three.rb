# Always 3 Ruby script
def always_three(number)
    # math and puts on one line
    (((number + 5) * 2 - 4) / 2 - number)
end

# ask for a number
puts "Give me a number please"

# get the number with Gets, convert to an integer, and set as a variable
first_number = gets.to_i

# math and show final number to user
puts "The number is always " +  always_three(first_number).to_s
