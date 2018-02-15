class ElefantsController < ApplicationController
  def new
    @elefant = Elefant.new
  end

  def index
    @elefants = Elefant.all
  end

  def create
    @elefant = Elefant.new(elefant_params)

    if @elefant.save
      redirect_to action: "index"
    else
      redirect_to new_elefant_path, flash: {error: "Bisch eigentli blöd, e Elefant ohni Name????"}
    end
  end

  def show
    @elefant = Elefant.find(params[:id])
  end

  def edit
    @elefant = Elefant.find(params[:id])
  end

  def destroy
    @elefant = Elefant.find(params[:id])
    @elefant.destroy
    redirect_to action: "index"
  end

  def update
    @elefant = Elefant.find(params[:id])
    @elefant.update_attributes(elefant_params)
    redirect_to action: "index"
  end

  private

  def elefant_params
    params.require(:elefant).permit(:name, :prename, :birthdate, :info)
  end
end
