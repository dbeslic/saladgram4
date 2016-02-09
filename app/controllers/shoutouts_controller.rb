class ShoutoutsController < ApplicationController
  def index
    @shoutouts = Shoutout.all
  end

  def show
    @shoutout = Shoutout.find(params[:id])
  end

  def new
    @shoutout = Shoutout.new
  end

  def create
    @shoutout = Shoutout.new

    @shoutout.user_id = params[:user_id]

    @shoutout.post_id = params[:post_id]

    @shoutout.comment = params[:comment]



    if @shoutout.save
      redirect_to "/shoutouts", :notice => "Shoutout created successfully."
    else
      render 'new'
    end

  end

  def edit
    @shoutout = Shoutout.find(params[:id])
  end

  def update
    @shoutout = Shoutout.find(params[:id])


    @shoutout.user_id = params[:user_id]

    @shoutout.post_id = params[:post_id]

    @shoutout.comment = params[:comment]



    if @shoutout.save
      redirect_to "/shoutouts", :notice => "Shoutout updated successfully."
    else
      render 'edit'
    end

  end

  def destroy
    @shoutout = Shoutout.find(params[:id])

    @shoutout.destroy


    redirect_to "/shoutouts", :notice => "Shoutout deleted."

  end
end
