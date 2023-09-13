⚠️ SCRIPT MADE WITH UBUNTU + WSL + RUBY ⚠️

# Ingredients generator for mangeons.io

## HOW TO USE:

### STEP 1 - Installation

1. Copy the repo
2.run `bundle install`
2. Create file 'env.json'
3. Add keys "email", "password", "url_discord_midjourney" and "chrome_bin"
```
{
  "email": "...",
  "password": "...",
  "url_discord_midjourney": "discord.com/channels/@me/...",
  "chrome_bin":"..." (eg: "~/usr/bin/google-chrome)
}
```
4. Replace '...' by your discord informations and your chrome bin


### STEP 2 - Sort you list alphabetically

1. Enter your list of food (format .txt) in food_lists directory (⚠️ 1 line == 1 ingredient)
2. Run `ruby 1_sort_a_list_alphabetically.rb`
3. Inform the list name
(The output is in the origin file)

### STEP 3 - Generate a CSV

1. Run `2_csv_generation.rb`
2. Inform the list name
3. Inform the store_area_id from Supabase
(The output is in food_lists folder)


### STEP 4 - Image prompting for midjourney

1. Run `3_image_generation.rb`
2. Inform the list name
(The script can take a long time)


### STEP 5 - Image download + rename

1. Go to your midjourney discord conversation
2. Select images to upscale
3. Go to your midjourney account (https://www.midjourney.com/app/)
4. Download IN BUNDLE (using the select mode) every images of food you upscaled
5. Drag and drop raw images into ./images_downloaded folder
(If you're not max13h, make sure to change your pseudo in the script)
5. Run `ruby 4_rename_images.rb`
6. The list of words that wasn't generated pops out, you can run again step 4 and 5

Thank you :)
