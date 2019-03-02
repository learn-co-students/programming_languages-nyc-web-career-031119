def reformat_languages(languages)
  new = {}
  languages.each {
    |style,style_hash|
    style_hash.each {
      |lang,lang_hash|
      if new.has_key?(lang)
        new[lang][:style] << style
      else
        new[lang]=lang_hash
        new[lang][:style]=[style]
      end
    }
  }
  puts new
  new
end
