answersList = File.readlines("answersBase.txt")

puts "Weclome, here you can use the magical eight-ball to answer all your questions."
print "please enter your question: "
gets

puts "\n~#{answersList.sample}"
