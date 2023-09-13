require_relative "./modules/setup_env.rb"
require_relative "./modules/image_generation.rb"

MY_ENV = setup_env

puts "===================================================================="
puts "                Module: Midjourney image generation"
puts "===================================================================="
puts ""
puts ""
puts ""
puts "!!! MAKE SURE YOUR FILE IS INSIDE THE FOLDER 'food_lists' !!!"
puts "Enter the file name to use (eg: food_list.txt ):"
puts ""

FILE_NAME = File.basename(gets.chomp, ".txt")
FILE_PATH = "./food_lists/#{FILE_NAME}.txt"
OUTPUT_PATH = "./output/#{FILE_NAME}/images_downloaded"

FileUtils.mkdir_p(OUTPUT_PATH)
puts ""

nb_of_ingredients = File.open(FILE_PATH, &:count)

puts 'Nombre of images that should be generated'
puts "=> #{nb_of_ingredients}"

puts "============================"
puts "     Starting the app"
puts "============================"
puts ""
puts ""
puts "Connexion to discord..."
puts ""

image_generation

puts "============================"
puts "         Job done"
puts "============================"
