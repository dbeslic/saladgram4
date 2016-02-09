class ChatsController < ApplicationController
  def index
    @chats = Chat.all
  end

  def show
    @chat = Chat.find(params[:id])
  end

  def new
    @chat = Chat.new
  end

  def create
    @chat = Chat.new

    @chat.title = params[:title]

    @chat.photo_url = params[:photo_url]

    @chat.prize_id = params[:prize_id]

    @chat.user_id = params[:user_id]



    if @chat.save
      redirect_to "/chats", :notice => "Chat created successfully."
    else
      render 'new'
    end

  end

  def edit
    @chat = Chat.find(params[:id])
  end

  def update
    @chat = Chat.find(params[:id])


    @chat.title = params[:title]

    @chat.photo_url = params[:photo_url]

    @chat.prize_id = params[:prize_id]

    @chat.user_id = params[:user_id]



    if @chat.save
      redirect_to "/chats", :notice => "Chat updated successfully."
    else
      render 'edit'
    end

  end

  def destroy
    @chat = Chat.find(params[:id])

    @chat.destroy


    redirect_to "/chats", :notice => "Chat deleted."

  end
end
