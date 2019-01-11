require_relative 'pages/homepage'
require_relative 'pages/bbc_sign_up'
require_relative 'pages/sign_in'
require_relative 'pages/age_page'
require_relative 'pages/dob_page'
require_relative 'pages/registration_page'

module BbcSite

  def bbc_homepage
    Homepage.new
  end

  def bbc_signup
    Confirmation.new
  end

  def sign_in
    BbcSignIn.new
  end

  def age_page
    BbcAge.new
  end

  def dob_page
    BbcDOB.new
  end

  def registration_page
    BbcRegistration.new
  end

end
