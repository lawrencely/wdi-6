class HomeController < ApplicationController

  def home
  end

  def numbers
    @amount = 234
    @large_number = 876546787498269876823
    @phone = 2124440998
  end

  def text
    @numbers = (1..20).to_a
    @person_count1 =1
    @person_count2 = 2
    @story = "a very long time ago in a galaxy, far, far, far away"
  end

  def assets
  end

  def url
  end
end