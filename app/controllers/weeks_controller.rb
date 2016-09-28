class WeeksController < ApplicationController
  def show
    @week = Week.find(params[:id])
  end

  def edit
    @week = Week.find(params[:id])
  end

  def delete
  end

  def new
    @week = Week.new
  end

  def create
    @week = Week.new(week_params)
    if(@week.save)

    end
  end

  def update
    #need to implement logic into controller
    #how will we save table?
    @week = Week.find(params[:id])

  end
end
