require_relative "EightBall.rb"
require_relative "RockPaperScissors.rb"
require_relative "HeadsOrTails.rb"
require_relative "LoveCalulator.rb"
require_relative "StringReverse.rb"

retrySentances = "That was a great game", "Sweet game", "Not bad of a game", "Awesome game", "Nice", "Pretty good game" 
GameEightBall = EightBall.new
GameRockPaperScissors = RockPaperScissors.new
GameHeadsOrTails = HeadsOrTails.new
GameLoveCalulator = LoveCalulator.new
GameStringReverse = StringReverse.new
wrongChoice = false

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
	~String Reverser(s)
EOF

	print "\nplease, ener your choice: "
	userChoice = gets[0].downcase
		
	if userChoice != 'q'

		begin

		case 
			when userChoice == 'e'
				GameEightBall.main

			when userChoice == 'r'
				GameRockPaperScissors.main

			when userChoice == 'h'
				GameHeadsOrTails.main

			when userChoice == 'l'
				GameLoveCalulator.main

			when userChoice == 's'
				GameStringReverse.main

			when userChoice != 'q'
				puts "*********$$$$* invalid, please enter from the list ******$$$$$****"	
				wrongChoice = true

		end #End of case statement

		if wrongChoice == false
			print "Would you like to play again (y)es, (q)uit?:"
			redoChoice = gets[0].downcase

			else 
				redoChoice = 'q'
				wrongChoice = true
		end#End of if statement

		end while redoChoice != 'q' #End of do while loop

	    puts "----------------------------------------"

	  end

end while userChoice != "q"

puts "You done here"
