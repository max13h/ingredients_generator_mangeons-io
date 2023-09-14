require 'fileutils'
require_relative './modules/choose_a_list'

puts "===================================================================="
puts "           Module: Rename and analyse missing images"
puts "===================================================================="
puts ""
puts ""
puts ""
puts "!!! MAKE SURE IMAGES YOU WANT TO RENAME ARE IN './output/[YOUR LIST NAME]/images_downloaded' !!!"
puts ""
input = choose_a_list

LIST_NAME = File.basename(input, ".txt")
LIST_PATH = "./food_lists/#{LIST_NAME}.txt"
OUTPUT_PATH = "./output/#{LIST_NAME}/#{LIST_NAME}_PNG"
IMAGES_PATH = "./output/#{LIST_NAME}/images_downloaded"
NOT_GENERATED_PATH = "#{OUTPUT_PATH}/not_generated.txt"

FileUtils.mkdir_p(OUTPUT_PATH)
puts ""

Dir.foreach(IMAGES_PATH) do |filename|
  next if filename == '.' || filename == '..'

  fruit = filename.match(/realistic_(\w+)_on_/)[1].downcase

  FileUtils.mkdir_p(OUTPUT_PATH)

  new_filename = "#{fruit}.png"
  original_path = File.join(IMAGES_PATH, filename)
  new_path = File.join(OUTPUT_PATH, new_filename)

  File.rename(original_path, new_path)

  puts "Renamed #{filename} to #{new_filename}"
end

puts ""
puts "Here are ingredients that don't have a picture:"
puts ""

File.open(NOT_GENERATED_PATH, 'w') {}

File.foreach(LIST_PATH) do |line|
  founded = false
  Dir.foreach(OUTPUT_PATH) do |filename|
    if filename.chomp.include?(line.chomp.downcase.gsub(' ', '_'))
      founded = true
    end
  end

  unless founded
    File.open(NOT_GENERATED_PATH, 'a') { |file| file.puts "#{line.chomp}" }
    puts "#{line.chomp}"
  end
end

puts "============================"
puts "         Job done"
puts "============================"
