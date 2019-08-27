class DishesController < ApplicationController
  def new
    @dishes = Dish.all
    @menu = Menu.find(menu_params)
    @dish = Dish.new
    @section = Section.find(section_params)
  end

  def create
    @menu = Menu.find(menu_params)
    @section = Section.find(section_params)
    @dish = Dish.new(dish_params)
    if (d = Dish.last)
      @dish.sort = d.sort + 1
    else
      @dish.sort = 1
    end
    if @dish.save
      @section.dishes << @dish
      redirect_to menu_path(@menu)
    else
      render :new
    end
  end

  def edit
    # byebug
    @menu = Menu.find(menu_params)
    @section = Section.find(section_params)
    @dish = Dish.find(params[:id])
  end

  def update
    @menu = Menu.find(params[:menu_id])
    @dish = Dish.find(params[:id])
    if @dish.update(dish_params)
      redirect_to menu_path(@menu)
    else
      render :edit
    end
  end

  def destroy
    dish = Dish.find(params[:id])
    dish.destroy
    redirect_to menu_path(params[:menu_id])
  end

  def up
    dish = Dish.find(params[:id])
    dish.sort += 1
    if dish.save
      render :show
    else
      render :show
    end
  end
  def down
    dish = Dish.find(params[:id])
    dish.sort -= 1
    if dish.save
      render :show
    else
      render :show
    end
  end

  private

    def dish_params
      params.require(:dish).permit(:title, :description, :price, :id)
    end
    def section_params
      params.require(:section_id)
    end
    def menu_params
      params.require(:menu_id)
    end
end
