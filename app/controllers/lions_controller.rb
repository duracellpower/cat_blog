class LionsController < ApplicationController
  def new
    @lion = Lion.new
  end

  def index
    @lions = Lion.all
  end

  def create
    @lion = Lion.new(lion_params)

    if @lion.save
      redirect_to action: "index"
    else
      redirect_to new_lion_path, flash: {error: "Bisch eigentli blöd, e Löi ohni Name????"}
    end
  end

  def show
    @lion = Lion.find(params[:id])
  end

  def edit
    @lion = Lion.find(params[:id])
  end

  def destroy
    @lion = Lion.find(params[:id])
    @lion.destroy
    redirect_to action: "index"
  end

  def update
    @lion = Lion.find(params[:id])
    @lion.update_attributes(lion_params)
    redirect_to action: "index"
  end

  private

  def lion_params
    params.require(:lion).permit(:name, :pre_name, :birthdate, :info)
  end

end
