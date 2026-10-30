def caesar_cipher(string, key)
  alphabet = ("a".."z").to_a

  characters_of_string = string.split("")

  characters_of_new_string = []

  characters_of_string.each do |character|
    if alphabet.include?(character.downcase)
      if character == character.upcase
        case_of_letter = "uppercase"
      else
        case_of_letter = "lowercase"
      end

      index_of_letter = alphabet.index(character.downcase)

      key.times do |count|
        if index_of_letter == 25 # To start from "a" after reaching "z"
          index_of_letter = 0
        else
          index_of_letter += 1
        end

        if (count + 1) == key
          if case_of_letter == "lowercase"
            characters_of_new_string.push(alphabet[index_of_letter].downcase)
          else
            characters_of_new_string.push(alphabet[index_of_letter].upcase)
          end
        end
      end
    else
      characters_of_new_string.push(character)
    end
  end
  puts characters_of_new_string.join("")
end

caesar_cipher("What a string!", 5)