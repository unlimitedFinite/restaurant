class PagesController < ApplicationController
  def home
    @menu = Menu.first
  end

  def bnb
  end

  def contact
  end
end
