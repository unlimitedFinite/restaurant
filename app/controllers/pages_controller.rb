class PagesController < ApplicationController
  def home
    @menu = Menu.first
    # @next = true if Menu.find(@menu.id - 1)
    @menus = Menu.all
  end

  def bnb
  end

  def contact
  end
end
