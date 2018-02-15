class SnakeController < ApplicationController

  def new
    @snake = Snake.new
  end

  def index
    @snakes = Snake.all
  end

  def create
    @snake = Snake.new(snake_params)

    if @snake.save
      redirect_to action: "index"
    else
      redirect_to new_snake_path, flash: {error: "Bisch eigentli blöd, e Schlange ohni Name????"}
    end
  end

  def show
    @snake = Snake.find(params[:id])
  end

  def edit
    @snake = Snake.find(params[:id])
  end

  def destroy
    @snake = Snake.find(params[:id])
    @snake.destroy
    redirect_to action: "index"
  end

  def update
    @snake = Snake.find(params[:id])
    @snake.update_attributes(snake_params)
    redirect_to action: "index"
  end

  private

  def snake_params
    params.require(:snake).permit(:name, :pre_name, :birthdate, :info)
  end

end
