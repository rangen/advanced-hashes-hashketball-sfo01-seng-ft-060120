require "YAML"

def game_hash
  game = YAML.load("stats.yml")


  puts game
end
