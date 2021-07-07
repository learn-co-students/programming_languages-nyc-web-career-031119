def reformat_languages(languages)
  # your code here
  foo = {}

    languages.each do |orientation, data|
      data.each do |names, info|
       if foo.has_key?(names)
       foo[names][:style] += [orientation]
       else
       foo[names] = info
       foo[names][:style] = [orientation]
       end
      end
    end
    foo
  end
