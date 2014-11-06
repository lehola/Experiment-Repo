class TemperatureCalc
 def main
	#Premade arrays/variables
	choiceList = %w{FA CE RA DE NE RE RO KE}
	currentTempChoice = 'FA'

	puts "~~~~~~~~~~~~~~~~~~~~ Welcome to our temperature conversion calulator! ~~~~~~~~~~~~~~~~~~~~"
	puts " Please note you can type quite(q) to exit. Otherwise please enter your temperature type!"

	begin 

		print  "\nTemperautre choices, please enter the entire word of at least two letters 
						\n~(ce)lsius, \n~(fa)hrenheit, \n~(Ra)nkine, \n~(De)lisle, \n~(Ne)wton, \n~(Re)aumur, \n~(Ro)mer \n or ~(Ke)lvin
							\n Please enter your current temperture type(From the list above): "

		if ( (choiceList.include? currentTempChoice) == false)

			print "\nInvalid temperature choice, please try again:"

		end #End of unless/if stament

		currentTempChoice = gets.upcase
		currentTempChoice = currentTempChoice[0] + currentTempChoice[1]

		
	end while ( (choiceList.include? currentTempChoice) == false)

		print "\nAnd which temperautre would you like to convert that too(also see list above, default fahrenheit is chosen if a correct one isn't given)?: "
		newTempChoice = gets.upcase
		newTempChoice = newTempChoice[0] + newTempChoice[1]

		print "\nPlease, enter your current temperature so we may convert it: "
		temperature = gets.to_f

		case currentTempChoice #Converts all temps to fahrenheit

				when 'CE' #Converts celsius to fahrenheit
					convertedTemp = temperature * 9/5 + 32

				when 'RA'#Converts Rankine to fahrenheit
					convertedTemp = temperature -459.67 

				when 'DE'#Converts Delisle to fahrenheit
						convertedTemp = 212 - temperature * 6/5 

				when 'NE'#Converts Newton to fahrenheit
						convertedTemp = temperature * 60/11 + 32

				when 'RE'#Converts Reaumur to fahrenheit
					convertedTemp = temperature * 9/4 + 32

				when 'RO'#Converts Romer to fahrenheit 
					convertedTemp = (temperature - 7.5) * 24/7 + 32

				when 'KE'#Converts Kelvin to fahrenheit
					convertedTemp = temperature * 9/5 - 459.67

				else 
					convertedTemp = temperature

		end#End of case statement


		case newTempChoice #Converts to the new temperature,

				when 'CE' #Converts fahrenheit to celsius 
					newConName = "celsius" #For displaying, the newConName was not taken from the user in case they only enter part of the name
					finalTemp = (convertedTemp - 32) * 5/9

				when 'RA'#Converts fahrenheit to Rankine
					newConName = "Rankine"
					finalTemp = convertedTemp + 459.67 

				when 'DE'#Converts fahrenheit to Delisle
					    newConName = "Delisle"
						finalTemp = (212 - convertedTemp) * 5/6 

				when 'NE'#Converts fahrenheit to Newton
					newConName = "Newton"
					finalTemp = (convertedTemp - 32) * 11/60

				when 'RE'#Converts fahrenheit to Reaumur
						newConName = "Reaumur"
					finalTemp = (convertedTemp -32) * 4/9

				when 'RO'#Converts fahrenheit to Romer
						newConName = "Romer"
					finalTemp = (convertedTemp -32) * 7/24 + 7.5

				when 'KE'#Converts fahrenheit to Kelvin 
					newConName = "Kelvin"
					finalTemp = (convertedTemp + 459.67) * 5/9

				when "FA" #In fahrenheits case it's already converted
					newConName = "Fahrenheit"
					finalTemp = convertedTemp

		end#End of case statement

		puts "Your temperature in #{newConName} is #{finalTemp.to_f.round(2)}" # converts finalTemp to float before rounding, in case calc changes it to int or such. I.E Watching for erros
 end
end
