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

def shoe_size(player_name)
  stats = game_hash

  stats.each_pair {|x, team|
        team[:players].each {|player|
          return player[:shoe] if player[:player_name] == player_name
        }
  }
end

def team_colors(team_name)
  stats = game_hash

  stats.each_pair {|x, team|
    return team[:colors] if team[:team_name] == team_name
  }
end

def team_names
  stats = game_hash
  names = []
  stats.each_pair {|x, team|
    names << team[:team_name]
  }
  names
end

def player_numbers(team_name)
  stats = game_hash
  jerseys = []

  stats.each_pair {|x, team|
    if team[:team_name] == team_name
      team[:players].each {|player|
          jerseys << player[:number]
      }
    end
  }
  jerseys
end

def player_stats(player_name)
  stats = game_hash

  stats.each_pair {|x, team|
        team[:players].each {|player|
          return player if player[:player_name] == player_name
        }
  }
end
