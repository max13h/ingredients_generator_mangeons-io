⚠️ SCRIPT REQUIRE RUBY + PYTHON ⚠️

# Ingredients generator for mangeons.io

## Installation:

1. Copy the repo
2. Run `bundle install`
2. Run `pip install -r requirements.txt`
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

## Modules:

### Sort your list alphabetically and make elements unique

* Drop your list of food (format .txt) in food_lists directory (⚠️ 1 line == 1 ingredient)
* Run the module
* Select the list name


### Generate a CSV

* Run the module
* Select the list name
* Inform the store_area_id from Supabase


### Image prompting for midjourney

* Run the module
* Select the list name (The script can take a long time)


### Image download + rename

1. Go to your midjourney discord conversation
2. Select images to upscale
3. Go to your midjourney account (https://www.midjourney.com/app/)
4. Download IN BUNDLE (using the select mode) every images of food you upscaled
5. Drag and drop raw images into './output/[YOUR LIST NAME]/images_downloaded'
5. Run the module
6. Select the list name

### Formating images

* Enter the global name of the folder you want to use

### Remove background from images

* Enter the global name of the folder you want to use
