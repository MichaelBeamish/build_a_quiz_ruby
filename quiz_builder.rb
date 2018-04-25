# Clear the screen before we start our program.
system "cls"

puts "You are going to build a quiz!"

# Ask the user how many questions to ask.
puts "How many questions are in your quiz?"
number_of_questions = gets.chomp.to_i


# Time to create some variables...

# A hash to hold our questions and answers:
questions_and_answers = Hash.new

# A string to hold our question:
question = String.new

# A string to hold our answer:
answer = String.new

# An integer to keep track of what question we are on:
tracker = 1

# An integer to keep track of our score:
user_score = 0

# Lets clear the screen again before we continue just to keep things pretty.
system "cls"


# Here we will get the questions and answers from the user...
number_of_questions.times do
	
	# Ask user for a question:
	puts "What is question #{tracker} of #{number_of_questions}?"
	question = gets.chomp
	
	# Ask user for an answer:
	puts "What is the answer to question #{tracker} of #{number_of_questions}?"
	answer = gets.chomp.downcase

	# Add to the hash the question as the key and the answer as the value:
	questions_and_answers[question] = answer

	# Bump our tracker up by one.
	tracker += 1

	# Clear the screen to keep it pretty.
	system "cls"
end


# Once the user has entered all the questions and answers we will begin the quiz.

puts "Time to take your quiz!"
puts "Press enter to begin."
# Just putting gets.chomp will stall the program until the user presses enter.
gets.chomp

# Clear the screen to keep it pretty.
system "cls"


#Quiz time!
# For each of the qestions in the hash do the following...
questions_and_answers.each do |hash_question, hash_answer|
	
	# Display the current score.
	puts "Current Score: #{user_score}/#{number_of_questions}"
	
	# Puts an empty line to add a blank space.
	puts ""
	
	# Puts the question.
	puts hash_question
	
	# Ask the user for the answer.
	puts "Please enter your answer."
	answer = gets.chomp.downcase

	# If the users answer equals the actual answer up the score by 1.
	if answer == hash_answer
		puts "Correct!"
		user_score += 1

	# Otherwise shame the user and display the correct answer.
	else
		puts "Wrong!"
		puts "The correct answer is #{hash_answer}."
	end

	# Have the user hit enter to move on.
	puts ""
	puts"Hit enter to continue."
	gets.chomp

	system "cls"

end

# Once all the questions have been asked display the final score.
puts "Final Score: #{user_score}/#{number_of_questions}"