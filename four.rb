hash = Hash.new

("a".."z").each.with_index(1) do |char, index|
  hash[char] = index
end
