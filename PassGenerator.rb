class PassGenerator
 def main
	password =  (Array.new(rand(8..32)))

	0.upto(password.length){ |cnt| password[cnt] = rand(33..125).chr }
	password = password.join('')

	puts "Your randomly generator password is: #{password}"

	print "\nWould you like to output it to a file, (y)es, (n)o called ~pass.txt~: "
	userChoice = gets[0].downcase

	if userChoice == 'y'
		File.open("pass.txt", "w") { |passFile| passFile.print "#{password}"}

		puts "\n~The password has been successfully saved to the file pass.txt."

		else
			puts "\n~The password has NOT been saved to a file."

	end
 end
end
