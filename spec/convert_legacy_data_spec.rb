require("rspec")
require("convert_legacy_data")

describe("convert_legacy_data") do 
  it("accepts a hash table and processes subarrays") do
    convert_legacy_data({1  => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"]}).should(eq({"a" => 1, "e" => 1,
 "i" => 1, "o" => 1, "u" => 1, "l" => 1, "n" => 1, "r" => 1, "s" => 1, "t" => 1}))
  end   

  it("accepts a hash table and processes subarrays") do
    convert_legacy_data({1  => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"], 8  => ["J", "X"]}).should(eq({"a" => 1, "e" => 1,
 "i" => 1, "o" => 1, "u" => 1, "l" => 1, "n" => 1, "r" => 1, "s" => 1, "t" => 1, "j" => 8, "x" => 8}))
  end

  it("accepts a hash table and processes subarrays alphabetically") do
    convert_legacy_data({ 1  => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
  2  => ["D", "G"],
  3  => ["B", "C", "M", "P"],
  4  => ["F", "H", "V", "W", "Y"],
  5  => ["K"],
  8  => ["J", "X"],
  10 => ["Q", "Z"]
}).should(eq({ "a" => 1, "b" => 3,  "c" => 3, "d" => 2, "e" => 1,
  "f" => 4, "g" => 2,  "h" => 4, "i" => 1, "j" => 8,
  "k" => 5, "l" => 1,  "m" => 3, "n" => 1, "o" => 1,
  "p" => 3, "q" => 10, "r" => 1, "s" => 1, "t" => 1,
  "u" => 1, "v" => 4,  "w" => 4, "x" => 8, "y" => 4,
  "z" => 10
}))
  end

end



