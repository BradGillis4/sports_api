class CLI
    def call
        API.get_data  
        greeting
        team_list
    end

    def greeting
        puts "Hello"
        puts "type 'exit' to quit"
    end

    def goodbye
        puts "Goodbye"
    end

    def display_info
        Team.all.each.with_index(1) do |team, i|
        end
      end

      def team_list
        puts "----------LIST----------"
        Team.all.each.with_index(1) do |team, i|
            puts "#{i}. #{team.strTeam}"
        end
        puts "which team would you like to see their stadium?"
        input = gets.strip.downcase
        while input != 'exit'  
            team_selection(input)
            break
        end 
    end

    def team_selection(input)
       
        team = Team.find_team(input)
        if team == nil
            puts "invalid entry, try again"
            team_list
        
        
        else
         team_details(team)

    end
    end

    def team_details(team)
        puts "Name: #{team.strTeam}"
        puts "Stadium: #{team.strStadium}"
        goodbye
    end

    def user_input
        gets.strip.downcase
    end
end 