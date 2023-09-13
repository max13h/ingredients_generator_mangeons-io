# frozen_string_literal: true

def authentification(browser)
  email_input = browser.text_field(name: 'email')
  email_input.set(MY_ENV['email'])
  password_input = browser.text_field(name: 'password')
  password_input.set(MY_ENV['password'])

  button = browser.button(type: 'submit')
  button.click
end
