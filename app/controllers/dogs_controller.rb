class DogsController < ApplicationController

  def new
    @dog = Dog.new
  end

  def index
    @dogs = Dog.all
  end

  def create
    @dog = Dog.new(dog_params)

    if @dog.save
      redirect_to action: "index"
    else
      redirect_to new_dog_path, flash: {error: "Bisch eigentli blöd, e Hund ohni Name????"}
    end
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def destroy
    @dog = Dog.find(params[:id])
    @dog.destroy
    redirect_to action: "index"
  end

  def update
    @dog = Dog.find(params[:id])
    @dog.update_attributes(dog_params)
    redirect_to action: "index"
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :pre_name, :birthdate, :info)
  end

end
