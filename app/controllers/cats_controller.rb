class CatsController < ApplicationController

  def new
    @cat = Cat.new
  end

  def index
    @cats = Cat.all
  end

  def create
    @cat = Cat.new(cat_params)

    if @cat.save
      redirect_to action: "index"
    else
      redirect_to new_cat_path, flash: {error: "Bisch eigentli blöd, e Chatz ohni Name????"}
    end
  end

  def show
    @cat = Cat.find(params[:id])
  end

  def edit
    @cat = Cat.find(params[:id])
  end

  def destroy
    @cat = Cat.find(params[:id])
    @cat.destroy
    redirect_to action: "index"
  end

  def update
    @cat = Cat.find(params[:id])  
    @cat.update_attributes(cat_params)
    redirect_to action: "index"
  end

  private

  def cat_params
    params.require(:cat).permit(:name, :pre_name, :birthdate, :info)
  end

end
