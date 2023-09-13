40.times do puts("") end

puts "===================================================================="
puts "                Ingredient generator for mangeons.io"
puts "===================================================================="
puts ""
puts ""
puts ""
puts "Here are the modules available:"
puts ""
puts "1. Sort a list alphabetically"
puts "2. CSV generator"
puts "3. Midjourney image generation"
puts "4. Rename and analyse missing images"
puts "5. Format images"
puts "6. Remove background from images"
puts ""

puts "Enter the MODULE NUMBER you want to use name to use:"
puts "===>"
puts ""

input = gets.chomp.to_i

puts ""
puts ""
puts ""

case input
when 1
  system("ruby ./src/1_sort_a_list_alphabetically.rb")
when 2
  system("ruby ./src/2_csv_generation.rb")
when 3
  system("ruby ./src/3_image_generation.rb")
when 4
  system("ruby ./src/4_rename_images.rb")
when 5
  system("python3 ./src/5_format_images.py")
when 6
  system("python3 ./src/6_remove_bg.py")
else
  puts "Invalid choice"
end
