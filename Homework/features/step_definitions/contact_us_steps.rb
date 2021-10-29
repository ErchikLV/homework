Then(/^I am on the contact us page$/) do
  @pages.contact_us_page.visit
end

Then(/^I should see Contact Us page$/) do
  # TODO: create assertions to confirm that user is on the contact page
  pending
end
=begin
When('I fill the first name input field with {string}') do |first_name|
  @pages.contact_us_page.fill_first_name(first_name)
end

When('I fill the last name input field with {string}') do |last_name|
  @pages.contact_us_page.fill_last_name(last_name)
end

When('I fill the email input field with {string}') do |email|
  @pages.contact_us_page.fill_email(email)
end

When('I fill the phone input field with {string}') do |phone|
  @pages.contact_us_page.fill_phone(phone)
end

When('I fill the company input field with {string}') do |company|
  @pages.contact_us_page.fill_company(company)
end

When('I fill the message input field with {string}') do |message|
  @pages.contact_us_page.fill_message(message)
end

Then(/^I select "(services|apply for a job|to pr department|any other)" in the topic dropdown$/) do |topic|
  @pages.contact_us_page.select_topic(topic)
end

Then(/^I select "(privacy policy|subscribe)" checkbox$/) do |checkbox_type|
  if checkbox_type == 'privacy policy'
    @pages.contact_us_page.select_privacy_checkbox
  else 
    @pages.contact_us_page.select_subscribe_checkbox
  end
end
=end