# require modules here
require "pry"

def load_library(file_path)
  require 'yaml'
  emos = YAML.load_file(file_path)
  emos
  result = {"get_meaning": {}, "get_emoticon": {}}
  emos.each do |meaning, emoticon|
    result[:get_meaning][emoticon[1]] = meaning
    result[:get_emoticon][emoticon[0]] = emoticon[1]
  end
result
  # code goes here
end

def get_japanese_emoticon(file_path, e_emoticon)
  translator = load_library(file_path)
  translator
  if translator[:get_emoticon].include?(e_emoticon)
    translator[:get_emoticon][e_emoticon]
  else
    "Sorry, that emoticon was not found"
  end
  # code goes here
end

def get_english_meaning(file_path, j_emoticon)
  translator = load_library(file_path)
  translator
  if translator[:get_meaning].include?(j_emoticon)
    translator[:get_meaning][j_emoticon]
  else
    "Sorry, that emoticon was not found"
  end
  # code goes here
end
