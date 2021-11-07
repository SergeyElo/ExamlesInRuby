maxnum = 100
kol_attempts = 10
puts "What is you name?"
name = gets.chomp
print "Hello, #{name}! Guess the number from 1 to #{maxnum}.\n"
attempt = 1
num = rand(maxnum)
while attempt <= kol_attempts
  print "Attempt N #{attempt}. Remained attempts: #{kol_attempts - attempt}.\n"
  puts "Input your number:"
  num_user = gets.to_i
  if num == num_user
    print "Good job, #{name}! Your guessed my number in #{attempt} guesses.\n"
    break
  else
    if num > num_user
      puts "Oops! Your guess was LOW."
    else
      puts "Oops! Your guess was HIGH."
    end
  end
  attempt += 1
end
if attempt > kol_attempts
  print "Sorry. Your did not get my number. My number was #{num}.\n "
end



