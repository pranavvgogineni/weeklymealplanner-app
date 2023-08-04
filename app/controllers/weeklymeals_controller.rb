class WeeklymealsController < ApplicationController
  def index
    @weeklymeal = Weeklymeal.all
    render :index
  end

  def create
    @weeklymeal = Weeklymeal.create(
      recipe_id: params[:recipe_id],
      week_id: params[:week_id],
    )

    redirect_to "/weeks/#{params[:week_id]}"
  end
end
