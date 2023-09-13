# frozen_string_literal: false

def send_prompts(browser)
  path = FILE_PATH

  sleep 10

  prompt_nb = 0
  File.open(path).each do |line|
    prompt_nb += 1
    ingredient = line.chomp
    prompt = "/imagine realistic #{ingredient} on white background"

    browser.send_keys(prompt)
    sleep 1
    browser.send_keys(:enter)

    puts "Prompt #{prompt_nb} sent."
    sleep 9
  end
end
