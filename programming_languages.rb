require 'pry'
languages = {
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
  languages.each {
    |style,style_hash|
    style_hash.each {
      |lang,lang_hash|
      if new_hash.has_key?(lang)
        new_hash[lang][:style] << style
      else
        new_hash[lang]=lang_hash
        new_hash[lang][:style]=[style]
      end
    }
  }
  puts new_hash
  new_hash
end
#binding.pry
reformat_languages(languages)
