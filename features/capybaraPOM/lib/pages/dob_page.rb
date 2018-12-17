require 'capybara/dsl'

class BbcDOB

  include Capybara::DSL

  DAY_INPUT = 'day-input'
  MONTH_INPUT = 'month-input'
  YEAR_INPUT = 'year-input'

  def input_day
    fill_in(DAY_INPUT, :with => 14)
  end

  def input_month
    fill_in(MONTH_INPUT, :with => "Mar")
  end

  def input_year
    fill_in(YEAR_INPUT, :with => 1995)
  end

  def click_continue
    find("button[type='submit']").click
  end

end
