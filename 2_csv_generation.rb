require "./src/csv_generator.rb"

puts `clear`
puts "===================================================================="
puts "       CSV generation for mangeons.io ingredients"
puts "===================================================================="
puts ""
puts ""
puts ""
puts "!!! MAKE SURE YOUR FILE IS INSIDE THE FOLDER 'food_lists' !!!"
puts "Enter the file name to use (eg: food_list.txt ):"
puts ""

FILE_NAME = gets.chomp
FILE_PATH = "./food_lists/#{FILE_NAME}"

nb_of_ingredients = File.open(FILE_PATH, &:count)

puts 'Nombre of ingredients that will be generated'
puts "=> #{nb_of_ingredients}"
puts ""
puts "Enter the store area id for your ingredients list (eg: c77bf846-884f-4dd8-a723-b69f16d13c17):"

store_area = gets.chomp
STORE_AREA = "#{store_area}"

puts ""
puts "============================"
puts "     Starting the app"
puts "============================"
puts ""
puts "Creation of the CSV file..."
puts ""

csv_generator

puts "============================"
puts "         Job done"
puts "============================"
