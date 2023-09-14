require_relative "./modules/setup_env.rb"
require_relative "./modules/image_generation.rb"
require_relative './modules/choose_a_list'

MY_ENV = setup_env

puts "===================================================================="
puts "                Module: Midjourney image generation"
puts "===================================================================="
puts ""
puts ""
puts ""
puts "!!! MAKE SURE YOUR FILE IS INSIDE THE FOLDER 'food_lists' !!!"
puts ""
input = choose_a_list

FILE_NAME = File.basename(input, ".txt")
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
