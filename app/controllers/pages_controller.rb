class PagesController < ApplicationController
  def home
    @menu = Menu.first
    # @next = true if Menu.find(@menu.id - 1)
    @menus = Menu.all
    @user = User.new
  end

  def bnb
  end

  def contact
  end

  def previous_menu
    @menus = Menu.all
    @menu = Menu.find(params[:id].to_i - 1)
    respond_to do |format|
      # if @menu
        format.js
      # else
      #   format.html { render root_path }
      # end
    end
  end

  def next_menu
    @menus = Menu.all
    @menu = Menu.find(params[:id].to_i + 1)
    respond_to do |format|
      # if @menu
        format.js
      # else
      #   format.html { render root_path }
      # end
    end
  end
end
