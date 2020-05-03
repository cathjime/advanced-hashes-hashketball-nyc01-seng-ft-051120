# Write your code below game_hash
require "pry"

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
  
end


def num_points_scored(player_name)
  game_hash.each do |team_key, team_value_hash|
    players_array = team_value_hash[:players]
    players_array.each do |player_stats_ele|
      if player_stats_ele[:player_name] == player_name
        return player_stats_ele[:points]
      end
    end 
  end 
end

def shoe_size(player_name)
   game_hash.each do |team_key, team_value_hash|
    players_array = team_value_hash[:players]
    players_array.each do |player_stats_ele|
      if player_stats_ele[:player_name] == player_name
        return player_stats_ele[:shoe]
      end
    end 
  end 
end 

def team_colors(team_name)
    game_hash.each do |team_key, team_value_hash|
      if team_value_hash[:team_name] == team_name
        return team_value_hash[:colors]
      end 
    end 
end 

def team_names 
  game_hash.collect do |team_key, team_value_hash|
    team_value_hash[:team_name]
  end
end

def player_numbers(team_name)   #returns an Array of the jersey numbers for that team.
 jersey_nums = []
  game_hash.each do |team_key, team_value_hash|
    if team_value_hash[:team_name] == team_name
      player_array = team_value_hash[:players] 
      jersey_nums = player_array.collect do |stats_hash|
        # binding.pry
        stats_hash[:number]
      end
    end 
  end 
  jersey_nums
end
  
def player_stats(player_name)   #returns all stats for a given player
player_stats_hash = {}
  game_hash.each do |team_key, team_value_hash|
    players_array = team_value_hash[:players] 
    players_array.each do |stats_hash|
      if stats_hash[:player_name] == player_name
        stats_hash.each do |stats_key, stats_value|
        player_stats_hash[stats_key] = stats_value
        end 
      end 
    end 
  end 
  player_stats_hash
end 

#return the number of rebounds associated with the player that has the largest shoe size
# find the player with the largest shoe size
# return that player's number of rebounds

def big_shoe_rebounds
  no_of_rebounds = 0 
  largest_shoesize = 0 
  player_w_largest_shoe = "" 
  
  game_hash.each do |team_key, team_value_hash|
    players_array = team_value_hash[:players] 
    players_array.each do |stats_hash|
      if stats_hash[:shoe] > largest_shoesize
        largest_shoesize = stats_hash[:shoe]
        player_w_largest_shoe = stats_hash[:player_name]
        no_of_rebounds = stats_hash[:rebounds]
        # binding.pry
      end 
    end 
  end 
  no_of_rebounds 
end 
  
 # binding.pry



