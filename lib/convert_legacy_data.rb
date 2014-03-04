def convert_legacy_data (input_hash)
  original_letters = input_hash

  new_letters = {}

  for x in 1..10 do
    letters = original_letters[x]
    if letters != nil
      letters.each do |letter|
        new_letters[letter.downcase!] = x
      end
    end
  end
  return Hash[new_letters.sort_by{|letter, value| letter}]
end
