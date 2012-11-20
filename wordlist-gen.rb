char_lines = []
File.readlines("chars.txt").each_with_index do |line, i|
    char_lines[i] = line.split(//).slice(0, line.size - 1)
end

char_lines[0].product(*(char_lines.slice(1, char_lines.size))).each_with_index do |chars, i|
  puts chars.join("")
end
