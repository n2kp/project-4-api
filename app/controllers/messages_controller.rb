class MessagesController < ApplicationController
  before_action :authenticate_user!

  before_action do
    @conversation = Conversation.find(params[:conversation_id])
  end

  def index
    @messages = @conversation.messages
      @messages.where.not(user_id: current_user.id).update_all(read: true)

    render json: @conversation, include: 'conversations.messages.read'
    @message = @conversation.messages.new
  end

  def create
    @message = @conversation.messages.new(message_params)
    @message.user_id = current_user.id

    if @message.save
      render json: @message
    end
  end

  def update
    if @conversation.messages.update(message_params)
      render json: @conversation
    else
      render json: @conversation.errors, status: :unprocessable_entity
    end
  end

  private
    def message_params
      params.permit(:body, :read, :user_id, :conversation_id)
    end
end
