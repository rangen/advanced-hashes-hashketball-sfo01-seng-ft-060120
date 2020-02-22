require "yaml"

def game_hash
  game = YAML.load_file("stats.yml")


  game
end
