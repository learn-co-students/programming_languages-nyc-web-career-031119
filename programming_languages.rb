def reformat_languages(languages)
  # your code here
new_hash = {}
languages.each do|style, value|
                   # style = :oo
                   # value = :ruby=>{:type=>"interpreted"},...and so on
value.each do |language, detail|
                #language = :ruby
                # detail = {:type=>"interpreted"}
    
if !new_hash[language] 
   new_hash[language] = {}
 end 
 
if new_hash[language][:style]
  new_hash[language][:style] << style

else 
  new_hash[language][:style] = []
  new_hash[language][:style] << style
end

new_hash[language][:type] = detail[:type]




 # we want to take the {:style =>} remove it from the start of the hash and append it on the same level of the hash as {:type=>}. #
end 
end
 return new_hash
end



