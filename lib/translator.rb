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
  library = load_library(file_path)
  
  if library["get_emoticon"].keys.include?(emoticon) == true
    library["get_emoticon"][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
  
  
end

def get_english_meaning(file_path, emoticon)
  library = load_library(file_path)
 
  if library["get_meaning"].keys.include?(emoticon) == true
    library["get_meaning"][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
  
  
end

load_library("lib/emoticons.yml")