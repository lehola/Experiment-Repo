
#premade variables/arrays
gameList = ["Rock", "Paper", "Scissors", "Lizard", "Spock"]


puts <<EOF 
\nWelcome to the game of Rock Paper Lizard Spock!
the game is simple you choose either Rock, Paper, Lizard, Spock and I choose one to
If we chosoe the same thing its a tie, other than that... see below

    ~Scissors cut paper
    ~Paper covers rock
    ~Rock crushes lizard

    ~Lizard poisons Spock
    ~Spock smashes scissors
    ~Scissors decapitate lizard
    ~Lizard eats paper

    ~Paper disproves Spock
    ~Spock vaporizes rock
    ~Rock crushes scissors

EOF

print "Please enter your choice: "
 choice = gets.chomp.capitalize

ourChoice = gameList[rand(gameList.length)]

if choice == "Scissors" &&  ourChoice == "Paper"
    result = "You win!"

	elsif choice == "Paper" &&  ourChoice == "Rock"
        result = "You win!"

    elsif choice == "Rock" &&  ourChoice == "Lizard"
        result = "You win!"

    elsif choice == "Lizard" &&  ourChoice == "Spock"
        result = "You win!"

    elsif choice == "Spock" &&  ourChoice == "Scissors"
        result = "You win!"

    elsif choice == "Scissors" &&  ourChoice == "Lizard"
        result = "You win!"

    elsif choice == "Lizard" &&  ourChoice == "Paper"
        result = "You win!"

    elsif choice == "Paper" &&  ourChoice == "Spock"
        result = "You win!"

    elsif choice == "Spock" &&  ourChoice == "Rock"
         result = "You win!"

    elsif choice == "Rock" &&  ourChoice == "Scissors"
         result = "You win!"

    elsif  choice == ourChoice
         result = "its a tie!"

        else    
             result = "You lose!"
end

puts "You chose #{choice} and we chose #{ourChoice} which means #{result}!"
