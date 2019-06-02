require "pry"

def reformat_languages(languages)

  # your code here
  new_hash = {}
  languages.each do |style, lang|
    lang.each do |name, info|
      if name == :javascript
        info[:style]= [:oo, style]
      else
        info[:style] = [style] #makes the style type show in info section
      #binding.pry
    end
    new_hash[name] = info #pushes the reformated name & info tags into a new hash
  end
end
new_hash
#binding.pry
end
