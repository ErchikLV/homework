  Then(/^I am on the registration page$/) do
    @pages.registration_page.visit
  end

  When('I fill the first name input field with {string}') do |first_name|
    @pages.registration_page.fill_first_name(first_name)
  end

  When('I fill the last name input field with {string}') do |last_name|
    @pages.registration_page.fill_last_name(last_name)
  end

  When('I fill the email input field') do 
    generated_email = Time.now.strftime('%H%M%S%L') + '@email.com'
    @pages.registration_page.fill_email(generated_email)
  end

  When('I fill the address input field with {string}') do |address|
    @pages.registration_page.fill_address(address)
  end

  When('I fill the city input field with {string}') do |city|
    @pages.registration_page.fill_city(city)
  end

  Then(/^I select (.*) from the region dropdown$/) do |value|
    @pages.registration_page.select_from_dropdown(value) 
  end

  When('I fill the zip code input field with {string}') do |zipcode|
    @pages.registration_page.fill_zip(zipcode)
  end

  When('I fill the login input field') do 
    generated_login = Time.now.strftime('%A%b%S')
    @pages.registration_page.fill_login(generated_login)
  end

  When('I fill the password input field with {string}') do |password|
    @pages.registration_page.fill_password(password)
  end

  When('I fill the password confirm input field with {string}') do |password_confirm|
    @pages.registration_page.fill_password_confirm(password_confirm)
  end

  Then('I select {string} radio field') do |subscribe|
    @pages.registration_page.select_yes(subscribe)
  end

  When('I select {string} checkbox') do |policy|
    @pages.registration_page.select_privacy(policy)
  end

  Then(/^I select confirm button$/) do 
    @pages.registration_page.confirm_button_click
  end

#/index.php?rt=account/success
  Then(/^I check registration success$/) do 
    expect(@pages.registration_page.contains_section?('YOUR ACCOUNT HAS BEEN CREATED!')).to eq(true)
  end