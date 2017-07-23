class MessagesController < ApplicationController
  before_action :authenticate_user!

  before_action do
    @conversation = Conversation.find(params[:conversation_id])
  end

  def index
    @messages = @conversation.messages

    if @messages.last && @messages.last.user_id != current_user.id
      @messages.last.update(read: true)
    end
    render json: @conversation
    @message = @conversation.messages.new

  end

  def create
    @message = @conversation.messages.new(message_params)
    @message.user_id = current_user.id

    if @message.save
      render json: @conversation
    end
  end

  private
    def message_params
      params.permit(:body, :user_id, :conversation_id)
    end
end
