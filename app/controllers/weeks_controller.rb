class WeeksController < ApplicationController
  def index
    @weeks = Week.all
    render :index
  end

  def show
    @week = Week.find_by(id: params[:id])
    render :show
  end

  def new
    @week = Week.new
    render :new
  end

  def create
    @week = Week.create(
      title: params[:title],
    )
    redirect_to "/weeks"
  end

  def edit
    @week = Week.find_by(id: params[:id])
    render :edit
  end

  def update
    @week.update(
      title: params[:title],
    )
    redirect_to "/weeks"
  end

  def destroy
    @week = Week.find_by(id: params[:id])
    @week.destroy
    redirect_to "/weeks", status: :see_other
  end
end
