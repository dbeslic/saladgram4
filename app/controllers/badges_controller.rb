class BadgesController < ApplicationController
  def index
    @badges = Badge.all
  end

  def show
    @badge = Badge.find(params[:id])
  end

  def new
    @badge = Badge.new
  end

  def create
    @badge = Badge.new

    @badge.user_id = params[:user_id]

    @badge.photo_url = params[:photo_url]

    @badge.caption = params[:caption]



    if @badge.save
      redirect_to "/badges", :notice => "Badge created successfully."
    else
      render 'new'
    end

  end

  def edit
    @badge = Badge.find(params[:id])
  end

  def update
    @badge = Badge.find(params[:id])


    @badge.user_id = params[:user_id]

    @badge.photo_url = params[:photo_url]

    @badge.caption = params[:caption]



    if @badge.save
      redirect_to "/badges", :notice => "Badge updated successfully."
    else
      render 'edit'
    end

  end

  def destroy
    @badge = Badge.find(params[:id])

    @badge.destroy


    redirect_to "/badges", :notice => "Badge deleted."

  end
end
