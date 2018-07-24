# require modules here
require "yaml"
require "pry"


def load_library(file_path)
  
  library = YAML.load_file(file_path)
  
  new_hash = {"get_meaning" => {    }, "get_emoticon"=> {  } }
  library.each do |key, values|
    new_hash["get_meaning"][values[1]] = key
    new_hash["get_emoticon"][values[0]] = values[1]
   end  
  new_hash
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
end

def get_english_meaning
  # code goes here
end

load_library("lib/emoticons.yml")