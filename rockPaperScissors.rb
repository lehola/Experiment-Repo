#premade variables/arrays/code blocks
gameList = ["Rock", "Paper", "Scissors", "Lizard", "Spock"]
choice = "Rock"
checkNotchoice = choice != "Rock" && choice != "Paper" &&  choice != "Scissors" && choice != "Lizard" &&  choice != "Spock"

puts <<EOP
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

EOP

begin 

    print "Please enter your choice: "

    if checkNotchoice
        print "Invalid choice, please try again "
             
    end

    choice = gets.chomp.capitalize

end while checkNotchoice #user error handling, in case they don't enter a choice

ourChoice = gameList[rand(gameList.length)]

result = 
if choice == "Scissors" &&  ourChoice == "Paper"
    "You win!"

	elsif choice == "Paper" &&  ourChoice == "Rock"
        "You win!"

    elsif choice == "Rock" &&  ourChoice == "Lizard"
        "You win!"

    elsif choice == "Lizard" &&  ourChoice == "Spock"
        "You win!"

    elsif choice == "Spock" &&  ourChoice == "Scissors"
        "You win!"

    elsif choice == "Scissors" &&  ourChoice == "Lizard"
        "You win!"

    elsif choice == "Lizard" &&  ourChoice == "Paper"
        "You win!"

    elsif choice == "Paper" &&  ourChoice == "Spock"
        "You win!"

    elsif choice == "Spock" &&  ourChoice == "Rock"
         "You win!"

    elsif choice == "Rock" &&  ourChoice == "Scissors"
         "You win!"

    elsif  choice == ourChoice
         "its a tie!"

        else    
             "You lose!"
end

puts "You chose #{choice} and we chose #{ourChoice} which means #{result}!"
