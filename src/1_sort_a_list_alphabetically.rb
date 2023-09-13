require 'fileutils'

puts "===================================================================="
puts "                Module: Sort list alphabetically"
puts "===================================================================="
puts ""
puts ""
puts ""
puts "!!! MAKE SURE YOUR LSIT IS INSIDE THE FOLDER './food_lists' !!!"
puts "Enter the FILE NAME to use (eg: food_list.txt ):"
puts ""

FILE_NAME = File.basename(gets.chomp, ".txt")
FILE_PATH = "./food_lists/#{FILE_NAME}.txt"
OUTPUT_PATH = "./output/#{FILE_NAME}"

FileUtils.mkdir_p(OUTPUT_PATH)
puts ""

list_to_array = File.readlines(FILE_PATH)

array_sorted = list_to_array.sort.uniq

File.open(FILE_PATH, 'w') do |file|
  array_sorted.each do |ingredient|
    file.puts ingredient
    puts ingredient
  end
end

puts ""
puts "============================"
puts "Your list is sorted and have unique elements"
puts "============================"
