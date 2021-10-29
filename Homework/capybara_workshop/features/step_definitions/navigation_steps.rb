When(/^I am in test automation page$/) do
  @pages.test_automation_page.visit
end

When(/^I navigate to Test automation page$/) do
  @pages.navigation_bar.go_to_test_automation_page
end

When(/^I navigate to Contact Us page$/) do
  @pages.navigation_bar.go_to_contact_us_page
end


