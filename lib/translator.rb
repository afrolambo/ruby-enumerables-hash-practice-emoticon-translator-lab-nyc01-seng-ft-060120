require 'yaml'
require 'pry'

def load_library(path)
  filepoo62 = File.read(path)
  emoticons = YAML.load_file("./lib/emoticons.yml")
 result = {}
 emoticons.each do |name, emoji| 
   result["#{name}"] = {} # p {name => {}}
   english_emoji = emoji[0]
   japanese_emoji = emoji[1]
  result[name][:english] = english_emoji
  result[name][:japanese] = japanese_emoji
end 
result 
end

def get_english_meaning(path, emoticon)
  library = load_library(path)
  emoji = library.keys.find {|key| library[key][:japanese] == emoticon } 
  emoji == nil ? "Sorry, that emoticon was not found" : emoji
  
end 




# english_emote = languages[english]
# japanese_emote = languages[japanese]
# if japanese_emote == passed_in_emote
 #   return english_emote
# end


def get_japanese_emoticon(yaml_file, emoticon)
  # code goes here
  english_emote = []
    emoji = []
  new_hash = load_library('./lib/emoticons.yml')
  new_hash.each do |name, languages|
      english_emote.push (languages[:english])
      emoji.push (languages[:japanese])
  end 
  english_emote
   if emoticon == english_emote[0] 
    japanese_emoticon = emoji
  end 
    japanese_emoticon == nil ? "Sorry, that emoticon was not found": japanese_emoticon
    binding.pry
end 

