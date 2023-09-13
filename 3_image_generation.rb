require "./src/setup_env.rb"
require "./src/image_generation.rb"

MY_ENV = setup_env

puts `clear`
puts "===================================================================="
puts "       Image generation for mangeons.io ingredients"
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

nb_of_ingredients = File.open(FILE_PATH, &:count)

puts 'Nombre of ingredients that will be generated'
puts "=> #{nb_of_ingredients}"

puts "============================"
puts "     Starting the app"
puts "============================"
puts ""
puts "Creation of the CSV file..."
puts ""

image_generation
