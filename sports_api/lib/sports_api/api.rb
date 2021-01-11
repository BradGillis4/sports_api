class API

    def self.get_data
        response = RestClient.get('https://www.thesportsdb.com/api/v1/json/1/lookup_all_teams.php?id=4328')
        team_array = JSON.parse(response)["teams"]
        
        team_array.each do |team|
            
            Team.new(team)

        
            
        end
        
    end



end