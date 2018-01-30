class HorsesController < ApplicationController
  def new
    @horse = Horse.new
  end

  def index
    @horses = Horse.all
  end

  def create
    @horse = Horse.new(horse_params)

    if @horse.save
      redirect_to action: "index"
    else
      redirect_to new_horse_path, flash: {error: "Bisch eigentli blöd, es Ross ohni Name????"}
    end
  end

  def show
    @horse = Horse.find(params[:id])
  end

  def edit
    @horse = Horse.find(params[:id])
  end

  def destroy
    @horse = Horse.find(params[:id])
    @horse.destroy
    redirect_to action: "index"
  end

  def update
    @horse = Horse.find(params[:id])
    @horse.update_attributes(horse_params)
    redirect_to action: "index"
  end

  private

  def horse_params
    params.require(:horse).permit(:name, :pre_name, :birthdate, :info)
  end

end
