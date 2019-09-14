class SectionsController < ApplicationController
  def new
    @section = Section.new
    @menu = Menu.find(params[:menu_id])
  end

  def create
    @menu = Menu.find(params[:menu_id])
    @section = Section.new(section_params)
    if @section.save
      @menu.sections << @section
      redirect_to menu_path(@menu)
    else
      render :new
    end
  end

  def edit
    @menu = Menu.find(params[:menu_id])
    @section = Section.find(params[:id])
    @dishes = Dish.all
  end

  # def update
  #   @section = Section.find(params[:id])
  #   @dish = Dish.find(params[:section][:dish_ids])
  #   @clone = @dish.dup
  #   if (l = @section.dishes.last)
  #     @clone.sort = l.sort + 1
  #   else
  #     @clone.sort = 1
  #   end
  #   if @section.dishes << @clone
  #     redirect_to menu_path(params[:menu_id])
  #   else
  #     render :show
  #   end
  # end

  def destroy
    section = Section.find(params[:id])
    section.destroy
    redirect_to menu_path(params[:menu_id])
  end

  def edit_name
    @section = Section.find(params[:section_id])
    @menu = Menu.find(params[:menu_id])
  end

  def update_name
    @section = Section.find(params[:section_id])
    if @section.update(section_params)
      redirect_to menu_path(params[:menu_id])
      flash[:notice] = 'Section Updated'
    else
      flash[:notice] = 'Please try again..'
      render :show
    end
  end

  private
    def section_params
      params.require(:section).permit(:title, :description)
    end
  end
