class ChatsController < ApplicationController
  def index
    @chats = Chat.all
  end

  def show
    @chat = Chat.find(params[:id])
    @post = Post.new

  end

  def chat_post
    @post = Post.new

    @post.user_id = params[:user_id]

    @post.chat_id = params[:chat_id]

    @post.photo_url = params[:photo_url]

    @post.caption = params[:caption]

    @chat = Chat.find(params[:chat_id])

    if @post.save
      redirect_to "/chats" , :notice => "Post created successfully."
      # Fix this link
      # redirect_to "/chats/:id" , :notice => "Post created successfully."
    else
      render 'show'
    end
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
