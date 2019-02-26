
languages_by_style = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
  }
} 
def reformat_languages(languages)
  new_hash = {}
  languages.each do |oo, functional|
    functional.each do |language, parameters|
      parameters.each do |type, values|
        if !new_hash.has_key?(language)
          new_hash[language] = {}
          new_hash[language][:style] = []
        end
        new_hash[language][:style] << oo
        new_hash[language][:type] = values
      end
    end
  end
  new_hash     
end
 puts reformat_languages(languages_by_style)