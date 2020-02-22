require "yaml"

def game_hash
  game = YAML.load_file("stats.yml")

  puts "Game Hash:"
  pp game
  game
end
