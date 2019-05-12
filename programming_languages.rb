
require "pry"

def reformat_languages(languages)
  new_hash = {}
  languages.each do |type, data|
    data.each do |lang, val| # binding.pry
      if lang == :javascript
        new_hash[lang] = val
        new_hash[lang][:style] = [:oo, :functional]
      else
       new_hash[lang] = val
       new_hash[lang][:style] = [type]
      end
    end
  end
  new_hash
end

#reformat_languages(languages)
