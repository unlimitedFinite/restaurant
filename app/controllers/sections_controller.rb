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

private
  def section_params
    params.require(:section).permit(:title)
  end
end
