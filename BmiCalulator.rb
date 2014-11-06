class BmiCalulator
 def main
 	
	puts "~~~~~~~~~ BMI Calulator ~~~~~~~~~"

	print "Please, enter your height in inches: "
	myHeight = gets.to_f


	print "\nPlease, enter your weight in pounds: "
	myWeight = gets.to_f

	myBMI =  myWeight / (myHeight * myHeight)   * 703

	puts "\n\n~Your BMI is: #{myBMI.round(2)}"



		if myBMI < 18.5
			puts"~Underweight. Thank you Spooky Skeleton."

		elsif myBMI >= 18.5 && myBMI < 25
			puts "~Normal.."

		elsif myBMI >= 25 && myBMI <= 29.9
			puts "~Overweight. Start exercising before your too far gone."

		elsif myBMI >= 30
			puts "~Obese. Put down those cheetos, start exercising and remeber I'M WATCHING YOU."

	end
 end
end
