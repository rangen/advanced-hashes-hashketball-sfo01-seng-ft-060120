require "yaml"

def game_hash
  YAML.load_file("stats.yml")
end
