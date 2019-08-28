class DishesController < ApplicationController
  before_action :set_dish, only: [:edit, :update, :destroy, :down, :up, :remove]
  before_action :set_section, only: [:new, :create, :edit, :up, :down, :remove]
  before_action :set_menu, only: [:new, :create, :edit, :update]

  def new
    @dishes = Dish.all
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(dish_params)
    @dish.sort = if @section.dishes.last
                   @section.dishes.last.sort + 1
                 else
                   1
                 end
    if @dish.save
      @section.dishes << @dish
      redirect_to menu_path(@menu)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @dish.update(dish_params)
      redirect_to menu_path(@menu)
    else
      render :edit
    end
  end

  def destroy
    if @dish.destroy
      redirect_to menu_path(params[:menu_id])
    else
      render :show
    end
  end

  def up
    return false if @dish.sort < 2

    dish_i = 0
    @section.dishes.each_with_index do |d, i|
      dish_i = i - 1 if @dish == d
    end
    dish2 = @section.dishes[dish_i]
    dish2.sort += 1
    @dish.sort -= 1
    if @dish.save && dish2.save
      redirect_to menu_path(params[:menu_id])
    else
      render :show
    end
  end

  def down
    return false if @dish == @section.dishes.last

    dish_i = 0
    @section.dishes.each_with_index do |d, i|
      dish_i = i + 1 if @dish == d
    end
    dish2 = @section.dishes[dish_i]
    dish2.sort -= 1
    @dish.sort += 1
    if @dish.save && dish2.save
      redirect_to menu_path(params[:menu_id])
    else
      render :show
    end
  end

  def remove
    @dish.fix_sorting(@section)
    if @section.dishes.delete(@dish)
      redirect_to menu_path(params[:menu_id])
    else
      render :show
    end
  end

  private

  def set_dish
    @dish = Dish.find(params[:id])
  end

  def set_menu
    @menu = Menu.find(params[:menu_id])
  end

  def set_section
    @section = Section.find(params[:section_id])
  end

  def dish_params
    params.require(:dish).permit(:title, :description, :price, :id)
  end
end
