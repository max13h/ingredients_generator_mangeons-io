system("clear") || system("cls")
puts "===================================================================="
puts "===================================================================="
puts ""
puts ""
puts ""
puts "!!! MAKE SURE YOUR FILE IS INSIDE THE FOLDER 'food_lists' !!!"
puts "Enter the file name to use (eg: food_list.txt ):"
puts ""

FILE_NAME = gets.chomp
FILE_PATH = "./food_lists/#{FILE_NAME}"
puts ""

list_to_array = File.readlines(FILE_PATH)

array_sorted = list_to_array.sort

File.open(FILE_PATH, 'w') do |file|
  array_sorted.each do |ingredient|
    file.puts ingredient
    puts ingredient
  end
end

puts "============================"
puts "         Job done"
puts "============================"
