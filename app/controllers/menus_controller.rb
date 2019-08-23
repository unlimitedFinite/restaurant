class MenusController < ApplicationController
  def index
    @menus = Menu.all
  end

  def show
    @menu = Menu.find(params[:id])
  end

  def new
    @menu = Menu.new
    @menu.dishes.build
    @section = Section.new
  end

  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      redirect_to menu_path(@menu.id)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @menu = Menu.find(params[:id])
    @menu.delete
  end

  private

  def menu_params
    params.require(:menu).permit(:title, :description, :price)
  end
end
