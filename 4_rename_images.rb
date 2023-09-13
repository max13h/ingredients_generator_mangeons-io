require 'fileutils'

puts `clear`
puts "===================================================================="
puts "       Rename and analyse relations for ingredients images"
puts "===================================================================="
puts ""
puts "!!! WARNING !!!"
puts ""
puts "Make sure images you want to rename are inside ./images_downloaded"
puts ""

puts "Select the list related to your images (eg: fruits_and_vegetables.txt): "

list_path = "./food_lists/#{gets.chomp}"

puts ""

folder_path = './images_downloaded'
new_folder_path = './images_downloaded/images_renamed'
output_file_path = './images_downloaded/output.txt'

Dir.foreach(folder_path) do |filename|
  next if filename == '.' || filename == '..'

  fruit = filename.match(/realistic_(\w+)_on_/)[1].downcase

  FileUtils.mkdir_p(new_folder_path)

  new_filename = "#{fruit}.png"
  original_path = File.join(folder_path, filename)
  new_path = File.join(new_folder_path, new_filename)

  File.rename(original_path, new_path)

  puts "Renamed #{filename} to #{new_filename}"
end

puts ""
puts "Here are ingredients that don't have a picture:"
puts ""

File.open(output_file_path, 'w') {}

File.foreach(list_path) do |line|
  founded = false
  Dir.foreach(new_folder_path) do |filename|
    if filename.chomp.include?(line.chomp.downcase)
      founded = true
    end
  end

  if founded
    File.open(output_file_path, 'a') { |file| file.puts "#{line.chomp} DONE" }
  else
    File.open(output_file_path, 'a') { |file| file.puts "#{line.chomp}" }
    puts "#{line.chomp}"
  end
end
