class BirdsController < ApplicationController
  def new
    @bird = Bird.new
  end

  def index
    @birds = Bird.all
  end

  def create
    @bird = Bird.new(bird_params)

    if @bird.save
      redirect_to action: "index"
    else
      redirect_to new_bird_path, flash: {error: "Bisch eigentli blöd, e Vogu ohni Name????"}
    end
  end

  def show
    @bird = Bird.find(params[:id])
  end

  def edit
    @bird = Bird.find(params[:id])
  end

  def destroy
    @bird = Bird.find(params[:id])
    @bird.destroy
    redirect_to action: "index"
  end

  def update
    @bird = Bird.find(params[:id])
    @bird.update_attributes(bird_params)
    redirect_to action: "index"
  end

  private

  def bird_params
    params.require(:bird).permit(:name, :pre_name, :birthdate, :info)
  end

end
