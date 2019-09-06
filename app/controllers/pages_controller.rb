class PagesController < ApplicationController
  def home
    @menu = Menu.first
    # @next = true if Menu.find(@menu.id - 1)
    @menus = Menu.all
  end

  # def previous_menu(old_menu)
  #   @menus = Menu.all
  #   @menu = Menu.find(old_menu.id + 1)
  #   respond_to do |format|
  #     if @menu
  #       format.js
  #       # format.html { redirect_to :root, notice: 'Next menu was successfully rendered.' }
  #     else
  #       format.html { render :root }
  #     end
  #   end
  # end

  def bnb
  end

  def contact
  end
end
