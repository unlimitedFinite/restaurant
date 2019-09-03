class PagesController < ApplicationController
  def home
    @menus = Menu.all
  end

  def bnb
  end

  def contact
  end
end
