require 'capybara/dsl'

class BbcAge

  include Capybara::DSL

  def over_13
    find("a[aria-label='13 or over']")
  end

  def click_over_13
    find("a[aria-label='13 or over']").click
  end

end
