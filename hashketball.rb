require "yaml"

def game_hash
  YAML.load_file("stats.yml")
end

def num_points_scored(player_name)
  stats = game_hash

  stats.each_pair {|x, team|
        team[:players].each {|player|
          return player[:points] if player[:player_name] == player_name
        }
  }
end