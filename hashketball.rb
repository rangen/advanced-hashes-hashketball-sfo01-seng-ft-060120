require "yaml"

def game_hash
  game = YAML.load_file("stats.yml")


  pp game
end
