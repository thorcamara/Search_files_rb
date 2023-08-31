def find(key)
  result = {}
  Dir.glob("*.txt") do |filename|
    File.foreach(filename).each_with_index do |line, index|
      if line.include?(key)
        result[index+1] = filename
      end
    end
  end
  result
end

puts "Search in Files"
print "Key: "
key = gets.chomp
result = find(key)

if result.length > 0
  for key, value in result
    puts "Filename: #{value} Line Number: #{key}"
  end
else
  puts "Not Found!"
end