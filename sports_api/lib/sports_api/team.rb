

class Team
    attr_accessor :strTeam, :strStadium

    @@all = []

    # def initialize(strStadium, strTeam)
    #     @strTeam = strTeam
    #     @strStadium = strStadium
    #     @@all << self
    # end
    def initialize(team_hash)
        team_hash.each do |k, v|
            self.send("#{k}=", v) if self.respond_to?("#{k}=")
        end
        save
    end
    def save
        @@all<<self
    end

    def self.all
        @@all
    end

    def self.find_team(team_name)
        self.all.find do |team|
            team.strTeam == team_name
        end
    end
end