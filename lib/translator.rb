# require modules here
require "yaml"

def load_library(file_path)
  
  library = YAML.load_file(file_path)
  
  new_hash = {"get_meaning" => {    }, "get_emoticon"=> {  } }
  #library.each
  library.each do |set|
    puts set.keys
    puts set[1]
  
  
 end  
  
  puts new_hash
  new_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

load_library("lib/emoticons.yml")