class NameGenerator
 def main

	nameList = [ ]
	fileCounter = 0

	File.open("nameBase.txt").each do |line|
		fileCounter += 1
		nameList << line

	end # End of file

		randomFirstWord = rand(fileCounter)

	begin #Start of while loop

		randomSecondWord = rand(fileCounter)

	end while randomSecondWord == randomFirstWord #End and redo of while loop

	nameList.map! {|x| x.chomp }

puts <<EOP
\nWelcome! Below you can see the naem we randomly Generated for you.
Note: you can always add more names to the random name list by editing the nameBase.txt file
\n~Your name is: #{nameList[randomFirstWord].chomp} #{nameList[randomSecondWord]}
EOP

 end
end
