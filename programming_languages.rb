require 'pry'
def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |format, data|
    data.each do |code_type, attributes|
      attributes.each do |attr_name, attr_value|
        #binding.pry
        if !new_hash.has_key?(code_type)
          new_hash[code_type] = {
            type: attr_value,
            style: []
          }
          new_hash[code_type][:style].push(format)
        else
          new_hash[code_type][:style].push(format)
        end
      end
    end
  end
  new_hash
end
