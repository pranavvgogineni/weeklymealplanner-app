class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render :index
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
    render :show
  end

  def new
    @recipe = Recipe.new
    render :new
  end

  def create
    @recipe = Recipe.create(
      title: params[:recipe][:title],
      description: params[:recipe][:description],
      steps: params[:recipe][:steps],
      timetocook: params[:recipe][:timetocook],
    )

    redirect_to "/recipes"
  end

  def edit
    @recipe = Recipe.find_by(id: params[:id])
    render :edit
  end

  def update
    @recipe = Recipe.find_by(id: params[:id])
    @recipe.update(
      title: params[:recipe][:title],
      description: params[:recipe][:description],
      steps: params[:recipe][:steps],
      timetocook: params[:recipe][:timetocook],
    )
    redirect_to "/recipes"
  end

  def destroy
    @recipe = Recipe.find_by(id: params[id])
    @recipe.destroy
    redirect_to "/recipes", status: :see_other
  end
end
