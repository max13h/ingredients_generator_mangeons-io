def choose_a_list
  puts "Choose a list to use: "
  puts ""

  list_proposition = []
  nb = 1
  Dir.foreach("./food_lists") do |filename|
    next unless File.extname(filename) == ".txt"

    puts "#{nb}. #{filename}"

    list_proposition << filename
    nb += 1
  end

  input = gets.chomp.to_i - 1

  return list_proposition[input] if list_proposition[input]
  puts "No file for this number"
end
