⚠️ SCRIPT MADE WITH UBUNTU + WSL + RUBY ⚠️

# HOW TO USE:

## STEP 1 - Installation & Image generation

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
5. Enter your list of food in food_list.txt (⚠️ 1 line == 1 ingredient)
6. Run `ruby app.rb` to start the script

## STEP 2 - Image download + rename

1. Go to your midjourney discord conversation
2. Select images to upscale
3. Go to your midjourney account (https://www.midjourney.com/app/)
4. Download IN BUNDLE (using the select mode) every images of food you upscaled
5. Drag and drop raw images into ./images_downloaded folder
5. Run `ruby rename_images.rb`
