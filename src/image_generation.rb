# frozen_string_literal: false
require_relative './modules/authentification'
require_relative './modules/send_prompts'
require 'fileutils'
require 'watir'

FileUtils.mkdir_p(File.join('./images_downloaded'))


def image_generation
  browser = Watir::Browser.new :chrome, options: { binary: MY_ENV['chrome_bin'] }
  browser.goto 'https://discord.com/login'
  sleep 5

  puts 'Authentification...'
  authentification(browser)

  sleep 5

  puts 'Opening midjourney discussion...'
  browser.goto MY_ENV['url_discord_midjourney']

  sleep 10

  puts 'Start sending prompts...'
  puts ''
  send_prompts(browser)

  puts ''
  puts 'Image generation done !'
  puts 'Go to discord and upscale every pictures you want'
  puts ""
  puts "Then, drag and drop your images into the folder 'images_downloaded'"
  puts "And finally run 'ruby rename_images.rb'"
end
