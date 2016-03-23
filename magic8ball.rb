puts "Got a question? I might have an answer. Go ahead and ask!"
question = gets.chomp

answers = ["It is certain", 
    "It is decidely so", 
    "Without a doubt", 
    "Yes, definitely", 
    "You may rely on it", 
    "As I see it, yes", 
    "Most likely", 
    "Outlook good", 
    "Yes", 
    "Signs point to yes", 
    "Reply hazy try again", 
    "Ask again later", 
    "Better not tell you now", 
    "Cannot predict now", 
    "Concentrate and ask again", 
    "Don't count on it", 
    "My reply is no", 
    "My sources say no", 
    "Outlook not so good", 
    "Very doubtful"]

your_answer = answers.shuffle.sample

require 'rubygems'
require 'twilio-ruby'

account_sid = "AC2221d4161dca336bdbfd5567f60d542e"
auth_token = "f9ecf9fa8128e1508c5d991e248d41bc"

@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.account.messages.create(
    :from => "+12175744169",
    :to => "+12175506816",
    :body => "The Magic 8 Ball says: #{your_answer} is the answer to your #{question}!"
    )

print "This was texted to #{message.to}: "
puts message.body