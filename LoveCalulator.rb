class LoveCalulator
 def main
	#Premade variables
	conbindNames = 0

	puts <<EOP
							WeLcOmE, to our LOVE calculator'
							Simply type you and your waifus name
							to see if its true love
EOP

	print "				Your name: "
	yourName = gets.chomp

	print "				Waifu's name: "
	otherName = gets.chomp

	(yourName + otherName).split("").map { |chars| conbindNames += chars.ord} #Converting each char in the string to ascii then adding it togeather
	conbindNames =  conbindNames % 101

	puts "You and your Waifu love each another ~#{conbindNames}%~ "	

 end
end
