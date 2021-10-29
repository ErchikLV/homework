# Contains all contact us page elements
class ContactUsPage

  include Capybara::DSL

  def initialize
    @first_name_input = Element.new(:css, '#firstName')
    @last_name_input = Element.new(:css, '#lastName')
    @email_input = Element.new(:css, '#email')
    @phone_input = Element.new(:css, '#phone')
    @company_input = Element.new(:css, '#company')
    @message_input = Element.new(:css, '#message')
    @dropdown = Element.new(:css, 'div.drop-down')
    @options = Element.new(:css, 'a.option')
    @privacy_checkbox = Element.new(:css, 'div.data-processing-checkbox')
    @subscribe_checkbox = Element.new(:css, 'div.subscribe-checkbox')
  end

  def ContactUsPage
    Capybara.visit('/index.php?rt=account/create')
  end

  def fill_first_name(text)
    @first_name_input.set(text)
  end

  def fill_last_name(text)
    @last_name_input.set(text)
  end

  def fill_email(text)
    @email_input.set(text)
  end

  def fill_phone(text)
    @phone_input.set(text)
  end

  def fill_company(text)
    @company_input.set(text)
  end

  def fill_message(text)
    @message_input.set(text)
  end

  def select_topic(topic_name)
    @dropdown.click
    Capybara.find(@options.path, text: /#{topic_name}/i).click
  end

  def select_privacy_checkbox() 
    @privacy_checkbox.click
  end

  def select_subscribe_checkbox()
    @subscribe_checkbox.click
  end
end
