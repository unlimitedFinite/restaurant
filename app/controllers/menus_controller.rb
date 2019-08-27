class MenusController < ApplicationController
  def index
    @menus = Menu.all
  end

  def show
    @menu = Menu.find(params[:id])
  end

  def new
    @menu = Menu.new
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
    @menu = Menu.find(params[:id])
  end

  def update
    @menu = Menu.find(params[:id])
    if @menu.update(menu_params)
      redirect_to menu_path(@menu)
    else
      render :edit
    end
  end

  def destroy
    @menu = Menu.find(params[:id])
    @menu.delete
    redirect_to menus_path
  end

  private

  def menu_params
    params.require(:menu).permit(:title, :description, :price)
  end
end
