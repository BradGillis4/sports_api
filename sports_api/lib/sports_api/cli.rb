

class CLI
    def call
        
        greeting
        API.get_data
        
        team_list
        menu
        
    end

 
    def greeting
        puts "Hello, type 'exit' to quit"
    end

    def goodbye
        puts "Goodbye"
    end

    def invalid
        puts "try again"
        menu
    end

    def team_selection
        puts "select a team for stadium name"
        selection = user_input
        team = Team.find_team(selection)
        team_details(team)

    end

    def team_details(team)
        puts "Name: #{team.strTeam}"
        puts "Stadium: #{team.strStadium}"
        menu
    end

    def team_list
        Team.all.each.with_index(1) do |team, i|
            puts "#{i}. #{team.strTeam}"
        end
        team_selection
    end

    def menu
        selection = user_input
         if selection == 'exit'
            goodbye
         
        else
            invalid
        end
    end

    def user_input
        gets.strip
    end
end 