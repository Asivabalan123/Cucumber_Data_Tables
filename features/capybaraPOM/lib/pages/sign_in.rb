require 'capybara/dsl'

class BbcSignIn

  include Capybara::DSL

  def register
    find("a[class='link link--primary']")
  end

  def click_register
    find("a[class='link link--primary']").click
  end

end
