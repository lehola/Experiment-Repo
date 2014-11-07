class AreaCalc
 def main
	puts "\nWelcome, here we can calculate the area of a Rectangle or Square, if given a height and width."
	print "\nPlease, enter the height of the area: "
	height = gets.to_f

	print "\nPlease, enter the width of the area: "
	width = gets.to_f

	puts "\n~The total area is: #{height * width}"
 end
end
