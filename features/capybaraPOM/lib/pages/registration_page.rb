require 'capybara/dsl'

class BbcRegistration

  include Capybara::DSL

  PASSWORD_INPUT = 'password-input'
  ERROR_MESSGAE = '#form-message-password'
  INPUT_EMAIL = 'user-identifier-input'
  INPUT_POSTCODES = 'postcode-input'
  GENDER = 'gender'
  NO_THANKS = '//*[@id="marketingOptIn"]/div[1]/div[2]/label/div'

  def input_email
    fill_in(INPUT_EMAIL, :with => "asivabalan@spartaglobal.com")
  end

  def input_postcodes
    fill_in(INPUT_POSTCODES, :with => "WD244EP")
  end

  def input_password(password)
    fill_in(PASSWORD_INPUT, :with => "#{password}")
  end

  def select_gender
    select('Female', :from => GENDER)
  end

  def no_updates
    find(:xpath, NO_THANKS).click
  end

  def click_register_button
    find("button[id='submit-button']").click
  end

  def get_error_message(error)
    find(ERROR_INPUT).text
  end

end
