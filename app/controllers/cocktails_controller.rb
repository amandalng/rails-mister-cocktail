class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :destroy]

  # A user can see the list of cocktails
  def index
    @cocktails = Cocktail.all
  end

  # A user can see the details of a given cocktail, with the dose needed for each ingredient
  def show
    # raise
    @doses = @cocktail.doses
  end

  # A user can create a new cocktail
  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save

    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @cocktail.destroy

    redirect_to cocktails_path
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
