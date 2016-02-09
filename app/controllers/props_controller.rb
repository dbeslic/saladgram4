class PropsController < ApplicationController
  def index
    @props = Prop.all
  end

  def show
    @prop = Prop.find(params[:id])
  end

  def new
    @prop = Prop.new
  end

  def create
    @prop = Prop.new

    @prop.post_id = params[:post_id]

    @prop.comment = params[:comment]



    if @prop.save
      redirect_to "/props", :notice => "Prop created successfully."
    else
      render 'new'
    end

  end

  def edit
    @prop = Prop.find(params[:id])
  end

  def update
    @prop = Prop.find(params[:id])


    @prop.post_id = params[:post_id]

    @prop.comment = params[:comment]



    if @prop.save
      redirect_to "/props", :notice => "Prop updated successfully."
    else
      render 'edit'
    end

  end

  def destroy
    @prop = Prop.find(params[:id])

    @prop.destroy


    redirect_to "/props", :notice => "Prop deleted."

  end
end
