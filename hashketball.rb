require 'pry'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: {
        "Alan Anderson" => {
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        "Reggie Evans" => {
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        "Brook Lopez" => {
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        "Mason Plumlee" => {
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        "Jason Terry" => {
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      }
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: {
        "Jeff Adrien" => {
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        "Bismak Biyombo" => {
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        },
        "DeSagna Diop" => {
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        "Ben Gordon" => {
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        "Brendan Haywood" => {
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      }
    }
  }
end

def num_points_scored (name)
  
  player_score = nil
  
  game_hash.each do |side, data|
    data.each do |players, stats|
      if players == :players
          
          stats.each do |player_name, stat_list|
            
            if player_name == name
              stat_list.each do |specific_stat, specific_stat_value|
                # binding.pry
                if specific_stat == :points
                    player_score = specific_stat_value
                    
                end
              end
            end  
              
          
        end 
          
      end #end if  
    end #end data.each
  end #end game_hash.each  
  player_score
end #end num_points method



def shoe_size (name)

    player_shoe_size = nil
  
  game_hash.each do |side, data|
    data.each do |players, stats|
      if players == :players
          
          stats.each do |player_name, stat_list|
            
            if player_name == name
              stat_list.each do |specific_stat, specific_stat_value|
                # binding.pry
                if specific_stat == :shoe
                    player_shoe_size = specific_stat_value
                    
                end
              end
            end  
              
          
        end 
          
      end #end if  
    end #end data.each
  end #end game_hash.each  
  player_shoe_size
end


def team_colors (team_name_parameter)
  
  team_colors_array = []

  game_hash.each do |side, data|
    data.each do |attribute, value|
      attribute.each do |value, color_selection|
         
        if value == :color
          team_colors_array << color_selection
         
        end #end if attribute
        
      end #attribute.each
    end #end data each
  end #end game hash
  
  team_colors_array
 end #end team colors method

team_colors ("Charlotte Hornets")











