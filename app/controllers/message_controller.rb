class MessageController < ApplicationController
   def new
    @talk = Talk.find(params[:talk_id])
    @message = Message.new
    authorize @message
    @messages = Message.where(talk: @talk)
  end

  def create
    @messages = Message.where(talk: @talk)
    @talk = Talk.find(params[:talk_id])
    @message = Message.new(message_params)
    authorize @message
    @message.sender = current_user
    @message.talk = @talk
    @message.date = Date.today
    if @talk.user == current_user
      @message.receiver = @talk.activity.seller
    else
      @message.receiver = @talk.user
    end

    if @message.save
      @messages = Message.where(talk: @talk)
      respond_to do |format|
      format.html {redirect_to new_talk_message_path(@talk)}
      format.js
    end
    else
      @messages = Message.where(talk: @talk)
      respond_to do |format|
      format.html { render :new }
      format.js
    end
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :likes)
  end

  def index
  end
end
