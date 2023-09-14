require_relative "./modules/csv_generator.rb"
require_relative './modules/choose_a_list'
require 'fileutils'

puts "===================================================================="
puts "                    Module: CSV generation"
puts "===================================================================="
puts ""
puts ""
puts "!!! MAKE SURE YOUR FILE IS INSIDE THE FOLDER './food_lists' !!!"
puts ""

input = choose_a_list

FILE_NAME = File.basename(input, ".txt")
FILE_PATH = "./food_lists/#{FILE_NAME}.txt"
OUTPUT_PATH = "./output/#{FILE_NAME}"

FileUtils.mkdir_p(OUTPUT_PATH)

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
puts ""
puts "Creation of the CSV file..."
puts ""

csv_generator

puts "============================"
puts "         Job done"
puts "============================"
