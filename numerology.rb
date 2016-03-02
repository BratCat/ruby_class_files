
# 2 birthdate method use array syntax to get each number individually, convert each number to an integer, add them up, and return birthpath number
def get_birth_path_num(birthdate)
    number = birthdate[0].to_i + birthdate[1].to_i + birthdate[2].to_i + birthdate[3].to_i + birthdate[4].to_i + birthdate[5].to_i + birthdate[6].to_i + birthdate[7].to_i
# covert 1st number back to string, covert each number to an integer and use array syntax to add the 2 numbers together.
    number = number.to_s
    number = number[0].to_i + number[1].to_i
# check if number is between 1 - 9 using an if statement
    if number > 9
        number = number.to.s
        number = number[0].to_i + number[1].to_i
    end
    
    return number
end

# 4 method that accepts birthpath number and determines correct message to display
def get_message(birth_path_num)
# use case statment to display number and meaning
    case birth_path_num
    when 1
        message = "Your life path number is #{birth_path_num}. \nOne is the leader. The  number one indicates the ability to stand alone, and is a strong     vibration. Ruled by the Sun."
    when 2
        message = "Your life path number is #{birth_path_num}. \nThis is the mediator and    peace-lover. The number two indicates the desire for harmony. It is a  gentle, considerate, and sensitive vibration. Ruled by the Moon."
    when 3
        message = "Your life path number is #{birth_path_num}. \nNumber Three is a   sociable, friendly, and outgoing vibration. Kind, positive, and   optimistic, Three's enjoy life and have a good sense of humor. Ruled  by Jupiter."
    when 4
        message = "Your life path number is #{birth_path_num}. \nThis is the worker.     Practical, with a love of detail, Fours are trustworthy, hard-working,  and helpful. Ruled by Uranus."
    when 5
        message = "Your life path number is #{birth_path_num}. \nThis is the freedom lover.  The number five is an intellectual vibration. These are 'idea' people    with a love of variety and the ability to adapt to most situations.    Ruled by Mercury."
    when 6
        message = "Your life path number is #{birth_path_num}. \nThis is the peace lover.    The number six is a loving, stable, and harmonious vibration. Ruled by     Venus."
    when 7
        message = "Your life path number is #{birth_path_num}. \nThis is the deep thinker.   The number seven is a spiritual vibration. These people are not very  attached to material things, are introspective, and generally quiet.     Ruled by Neptune."
    when 8
        message = "Your life path number is #{birth_path_num}. \nThis is the manager.    Number Eight is a strong, successful, and material vibration. Ruled by     Saturn."   
    when 9
        message = "Your life path number is #{birth_path_num}. \nThis is the teacher.    Number Nine is a tolerant, somewhat impractical, and sympathetic   vibration. Ruled by Mars."   
    else
        message = "Your number isn't between 1 and 9!"
    end
end 

# 1. Ask user for birthdate in MMDDYYYY format
puts "Please enter your birthdate in MMDDYYYY format"
birthdate = gets

# 3 get the birth path number and assign to variable
birth_path_num = get_birth_path_num(birthdate)

# 5 get the message and assign to variable
message = get_message(birth_path_num)

# 6 display the message and number
puts message


