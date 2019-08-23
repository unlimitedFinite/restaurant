class DishesController < ApplicationController


  def new
    @dish = Dish.new
    @menu = Menu.find(menu_params)
  end

  def create
    dish = Dish.new(dish_params)
    menu = Menu.find(menu_params)
    if dish.save
      section = Section.create(
        menu_id: menu.id,
        dish_id: dish.id
      )
      redirect_to menu_path(menu)
    else
      render :new
    end
  end

  def destroy
    @dish = Dish.destroy(params[:dish_id])
    redirect_to menu_path(@menu)
  end


  private

    def dish_params
      params.require(:dish).permit(:title, :description, :category, :price)
    end
    def menu_params
      params.require(:menu_id)
    end
end
