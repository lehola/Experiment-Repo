require_relative "EightBall.rb"
require_relative "RockPaperScissors.rb"

retrySentances = "That was a great game", "Sweet game", "Not bad of a game", "Awesome game", "Nice", "Pretty good game" 
GameEightBall = EightBall.new
GameRockPaperScissors = RockPaperScissors.new

begin
	puts <<EOF
	\n
	~~~~~~~~~~~~~~~ Welcome ~~~~~~~~~~~~~~~
	Which game would you like to play?
	We have
	~eight ball(e)
	~Rock paper scissors spock(r)
EOF

print "\nplease, ener your choice: "
userChoice = gets[0].chomp.downcase

	case 
		when userChoice == 'e'
			GameEightBall.main

		when userChoice =='r'
			GameRockPaperScissors.main

		when userChoice != 'q'
			puts "*********$$$$* invalid, please enter from the list ******$$$$$****"	

	end #End of case statement

    puts "----------------------------------------"

end while userChoice != "q"

puts "You done here"
