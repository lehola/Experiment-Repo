require_relative "EightBall.rb"
require_relative "RockPaperScissors.rb"
require_relative "HeadsOrTails.rb"
require_relative "LoveCalulator.rb"
require_relative "StringReverse.rb"
require_relative "NameGenerator.rb"
require_relative "PassGenerator.rb"
require_relative "BmiCalulator.rb"
require_relative "TemperatureCalc.rb"
require_relative "DecToBin.rb"

GameEightBall = EightBall.new
GameRockPaperScissors = RockPaperScissors.new
GameHeadsOrTails = HeadsOrTails.new
GameLoveCalulator = LoveCalulator.new
GameStringReverse = StringReverse.new
GameNameGenerator = NameGenerator.new
GamePassGenerator = PassGenerator.new
GameBMI = BmiCalulator.new
GameTemperatureCalc = TemperatureCalc.new
GameDecToBin = DecToBin.new
wrongChoice = false

begin
	puts <<EOF
	\n
	~~~~~~~~~~~~~~~ Welcome ~~~~~~~~~~~~~~~
	Which game would you like to play?
	We have
	~Eight ball(e)
	~Rock paper scissors spock(r)
	~Heads or tails(h)
	~Love Calulator(l)
	~String Reverser(s)
	~Name Generator(n)
	~Password Generator(p)
	~BMI Calculator(b)
	~Temperature Converter(t)
	~Decimal to Binary Converter(d)
	or to exit type (q)uit
EOF

	print "\nplease, ener your choice: "
	userChoice = gets[0].downcase
		
	if userChoice != 'q'

		begin
		puts "----------------------------------------"
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

			when userChoice == 'n'
				GameNameGenerator.main

			when userChoice == 'p'
				GamePassGenerator.main

			when userChoice == 'b'
				GameBMI.main

			when userChoice == 't'
				GameTemperatureCalc.main

			when userChoice == 'd'
				GameDecToBin.main

			when userChoice != 'q'
				puts "*********$$$$* invalid, please enter from the list ******$$$$$****"	
				wrongChoice = true

		end #End of case statement
		puts "----------------------------------------"

		if wrongChoice == false
			print "Would you like to play again (y)es, (q)uit?:"
			redoChoice = gets[0].downcase

			else 
				redoChoice = 'q'
				wrongChoice = false

		end#End of if statement

		end while redoChoice != 'q' #End of do while loop

	  end

end while userChoice != "q"

puts "You done here. #{ (File.readlines("quoteBase.txt").sample) }"
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
