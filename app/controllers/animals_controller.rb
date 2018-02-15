class AnimalsController < ApplicationController

  attr_accessor :types

  def initialize
    @types = [
      AnimalType.new("Pferd"),
      AnimalType.new("Katze"),
      AnimalType.new("Vogel"),
      AnimalType.new("Schlange"),
      AnimalType.new("Dog"),
      AnimalType.new("Löwe")
    ]
    super
  end

  def new
    @animal = Animal.new
  end

  def index
    @animals = Animal.all
  end

  def create
    @animal = Animal.new(animal_params)

    if @animal.save
      redirect_to action: "index"
    else
      redirect_to new_animal_path, flash: {error: "Bisch eigentli blöd, es Tier ohni Name????"}
    end
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy
    redirect_to action: "index"
  end

  def update
    @animal = Animal.find(params[:id])
    @animal.update_attributes(animal_params)
    redirect_to action: "index"
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :pre_name, :birthdate, :info, :animal_type)
  end

end
