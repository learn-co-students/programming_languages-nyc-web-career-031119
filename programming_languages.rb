require 'pry'
def reformat_languages(languages)
  # your code here
  final_hash = {}
  style_hash = {}
  style_hash[:style] = []
  languages.each do |style, group|
    group.each do |language, type_hash|
      if final_hash[language] == nil
      final_hash[language] = {}
      final_hash[language] = {type_hash.keys[0] => type_hash.values[0]}
      final_hash[language][:style] =[]
      final_hash[language][:style] << style
      else
        final_hash[language][:style] << style
      end
    end
  end
  return final_hash
end
