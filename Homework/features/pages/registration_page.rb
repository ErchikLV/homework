#Contains all register page elements
class RegistrationPage

    include Capybara::DSL
  
  def initialize
    @first_name_input = Element.new(:css, '#AccountFrm_firstname')
    @last_name_input = Element.new(:css, '#AccountFrm_lastname')
    @email_input = Element.new(:css, '#AccountFrm_email')
    @address_input = Element.new(:css, '#AccountFrm_address_1')
    @city_input = Element.new(:css, '#AccountFrm_city')
    @dropdown = Element.new(:css, '#AccountFrm_zone_id')
    @options = Element.new(:css, '[value*="3515"]')
    @choose_region = Element.new(:css, '//0x558cc62f7ba8')
    @zipcode_input = Element.new(:css, '#AccountFrm_postcode')
    @login_input = Element.new(:css, '#AccountFrm_loginname')
    @password_input = Element.new(:css, '#AccountFrm_password')
    @password_confirm_input = Element.new(:css, '#AccountFrm_confirm')
    @subscribe_yes = Element.new(:css, '#AccountFrm_newsletter1')
    @subscribe_no = Element.new(:css, '#AccountFrm_newsletter0')
    @select_privacy = Element.new(:css, '#AccountFrm_agree')
    @confirm_button = Element.new(:css, 'button.btn.btn-orange.pull-right.lock-on-click')
    @section_titles = Element.new(:css, 'h1.heading1') #[class*="fa fa-thumbs-up"]
  end
  
  def visit
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

  def fill_address(text)
    @address_input.set(text)
  end

  def fill_city(text)
    @city_input.set(text)
  end

  def select_from_dropdown(region)
    @dropdown.click
    @options.click
  end

  def fill_zip(text)
    @zipcode_input.set(text)
  end

  def fill_login(text)
    @login_input.set(text)
  end

  def fill_password(text)
    @password_input.set(text)
  end

  def fill_password_confirm(text)
    @password_confirm_input.set(text)
  end

  def select_yes(subscribe)
    @subscribe_yes.click
  end

  def select_no(subscribe)
    @subscribe_no.click
  end

  def select_privacy(policy)
    @select_privacy.click
  end

  def confirm_button_click()
    @confirm_button.click
  end

  def contains_section?(text)
    @section_titles.element_on_page? text: text, visible: true
  end

end