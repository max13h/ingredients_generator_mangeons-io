require "./src/setup_env.rb"
require "./src/csv_generator.rb"
require "./src/image_generation.rb"

MY_ENV = setup_env

puts `clear`
puts "===================================================================="
puts "       Alimentary product generation for mangeons.io"
puts "===================================================================="
puts ""

puts "!!! WARNING !!!"
puts ""
puts "You're about to generate:"
puts ""
puts "=> a CSV file to import into the production DB in Supabase"
puts "=> an Midjourney image to put into the mangeons.io project"
puts ""
puts "We're gonna use you data from env.json"
puts ""
puts ""
puts "Is it okay to continue ? (Y/n)"
input = gets.chomp

return unless (input.upcase == "Y")

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

puts ""
puts "Enter the store area id for your ingredients list (eg: c77bf846-884f-4dd8-a723-b69f16d13c17
):"

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


puts "Starting image generation..."
puts ""

image_generation

puts "============================"
puts "         Job done"
puts "============================"
