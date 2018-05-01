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



def team_names
  
  team_names_array = []

  game_hash.each do |side, data|
    data.each do |attribute, value|

        if attribute == :team_name
          team_names_array << value
        end #end if attribute

  
    end #end data each
  end #end game hash
  
  team_names_array
end #end team colors method


def team_colors (team_name_parameter)
  game_hash.each do |side, data|

    if data[:team_name] == team_name_parameter
        return data[:colors]
    end
  end #end game hash
end #end team colors method
 


def player_numbers (team_name_parameter)
  
  player_numbers_array = []
  
  game_hash.each do |side, data|
    
      if data[:team_name] == team_name_parameter

    data.each do |players, stats|
      if players == :players
          
          stats.each do |player_number, stat_list|
          
              stat_list.each do |specific_stat, specific_stat_value|
                
                if specific_stat == :number
                    # binding.pry
                    player_numbers_array << specific_stat_value
                end
            end  
        end 
      end #end if  
    end #end data.each
  end
  end #end game_hash each 
  player_numbers_array
end #end player_numbers method

player_numbers ("Charlotte Hornets")

def player_stats (name_parameter)
  
  game_hash.each do |side, data|
    
    data.each do |players, stats|
      
        
      
      if players == :players
          
        stats.each do |name,individual_stats|
            if name == name_parameter
              return individual_stats
            end  
        end
          
      end #end if  
    end #end data.each
  end #end game hash
end #end big method



def who_has_biggest_shoes

  player_with_biggest_shoes = nil
  biggest_shoe_size = 0
  
  game_hash.each do |side, data|
    data.each do |players, stats|
      if players == :players
        
        stats.each do |name, individual_stats|
          
          individual_stats.each do |shoe_key, shoe_value|
            
            if shoe_key == :shoe
              if shoe_value > biggest_shoe_size
                  biggest_shoe_size = shoe_value
                  player_with_biggest_shoes = name
                 
              end    
            end
            
          end  
            
  
  
        end #end individual_stats 
  
      end #end if 
    end #end data each
  end #end game hash 
  
  player_with_biggest_shoes
end #end who has biggest shoes method




def big_shoe_rebounds 
  
    biggest_shoes_rebound_count = 0
    player_with_the_biggest_shoes = who_has_biggest_shoes
  
    game_hash.each do |side, data|
      
      
      data[:players].each do |players, stats|
        
        # players.each do |player_name, stat_list|
          #binding.pry
         #if players == :players
           
              if players == who_has_biggest_shoes
                #binding.pry
                stats.each do |specific_stat, specific_stat_value|
                  
                  if specific_stat == :rebounds
                      biggest_shoes_rebound_count = specific_stat_value
                      #binding.pry
                      
                  end #end if
                  
                end #end stat_list each
            #  end  #end if player_name
        
        end  #end stats each
      end #end data
    end  #end game hash
    biggest_shoes_rebound_count
    
end #end method


big_shoe_rebounds





