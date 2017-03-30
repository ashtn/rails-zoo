class AnimalsController < ApplicationController
  def new
    @animal = Animal.new
  end
  def create
    animal = Animal.create animal_params
    if animal.save
      redirect_to animals_path
    else
      render :new
    end
  end
  def index
    @animals = Animal.all
  end
  def show
    @animal = Animal.find(params[:id])
  end
end

private

def animal_params
  params.require(:animal).permit(:name, :species, :age)
end
