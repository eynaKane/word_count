loop do
  print "\n\n-----------\nText please: "
  text = gets.chomp.split(" ")

  break if text.join =~ /exit/i

  frequencies = Hash.new(0)
  text.each { |t| frequencies[t.capitalize] += 1 }
  frequencies = frequencies.sort_by {|k, v| v }.reverse!

  puts "\n-------------\n WORD: COUNT \n-------------\n"
  frequencies.each { |k, v| puts "#{k}: #{v}" }
end
