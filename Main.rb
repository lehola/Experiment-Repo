require_relative "EightBall.rb"
require_relative "RockPaperScissors.rb"
require_relative "HeadsOrTails.rb"
require_relative "LoveCalulator.rb"

retrySentances = "That was a great game", "Sweet game", "Not bad of a game", "Awesome game", "Nice", "Pretty good game" 
GameEightBall = EightBall.new
GameRockPaperScissors = RockPaperScissors.new
GameHeadsOrTails = HeadsOrTails.new
GameLoveCalulator = LoveCalulator.new

begin
	puts <<EOF
	\n
	~~~~~~~~~~~~~~~ Welcome ~~~~~~~~~~~~~~~
	Which game would you like to play?
	We have
	~eight ball(e)
	~Rock paper scissors spock(r)
	~Heads or tails(h)
	~Love Calulator(l)
EOF

print "\nplease, ener your choice: "
userChoice = gets[0].chomp.downcase

	case 
		when userChoice == 'e'
			GameEightBall.main

		when userChoice == 'r'
			GameRockPaperScissors.main

		when userChoice == 'h'
			GameHeadsOrTails.main

		when userChoice == 'l'
			GameLoveCalulator.main

		when userChoice != 'q'
			puts "*********$$$$* invalid, please enter from the list ******$$$$$****"	

	end #End of case statement

    puts "----------------------------------------"

end while userChoice != "q"

puts "You done here"
