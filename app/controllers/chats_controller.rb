class ChatsController < ApplicationController
  def index
    @chats = Chat.all
  end

  def show
    @chat = Chat.find(params[:id])
    @post = Post.new
    @connection = Connection.new

  end

  def chat_post
    @post = Post.new

    @post.user_id = params[:user_id]

    @post.chat_id = params[:chat_id]

    @post.photo_url = params[:photo_url]

    @post.caption = params[:caption]

    @chat = Chat.find(params[:chat_id])

    if @post.save
      redirect_to :back , :notice => "Post created successfully."
    else
      render 'show'
    end
  end


  def join_chat
    @connection = Connection.new

    @connection.chat_id = params[:chat_id]

    @connection.user_id = params[:user_id]

    @chat = Chat.find(params[:chat_id])

    if @connection.save
      redirect_to :back, :notice => "You joined the chat!"
    else
      render 'show'
    end

  end

  def stats
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
