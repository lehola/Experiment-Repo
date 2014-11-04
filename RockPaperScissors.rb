class RockPaperScissors
 def main#premade variables/arrays/code blocks
    gameList = %w{ Rock Paper Scissors Lizard Spock }
    retrySentances = "That was a great game", "Sweet game", "Not bad of a game", "Awesome game", "Nice", "Pretty good game" 

        choice = "Rock"

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

        if choice != "Rock" && choice != "Paper" &&  choice != "Scissors" && choice != "Lizard" &&  choice != "Spock"
            puts "\n~Invalid choice, please try again "
                 
        end

        print "Please enter your choice: "
        choice = gets.chomp.capitalize

    end while choice != "Rock" && choice != "Paper" &&  choice != "Scissors" && choice != "Lizard" &&  choice != "Spock" #user error handling, in case they don't enter a choice

    ourChoice = gameList[rand(gameList.length)]

        result = 
        if choice == ourChoice
             "its a tie!"

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

            elsif  choice == "Scissors" &&  ourChoice == "Paper"
                "You win!"

                else    
                     "You lose!"
        end#End of if choice statement

            puts "\nYou chose #{choice} and we chose #{ourChoice} which means #{result}!\n"
               generatedSen = retrySentances[rand(retrySentances.length)]
            
 end 
end
