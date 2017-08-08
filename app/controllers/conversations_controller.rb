class ConversationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_conversation, only: [:update]

  def index
    @users = User.where.not(id: current_user.id)
    @conversations = Conversation.where("sender_id = ? OR receiver_id = ?", current_user.id, current_user.id)
    render json: @conversations, include: 'conversations.messages'
  end

  def show
    @conversations = Conversation.find(params[:id])
    render json: @conversations, include: 'conversations.messages'
  end

  def create
    # /conversations?sender_id=2&receiver_id
    if Conversation.between(params[:sender_id], params[:receiver_id]).present?
      @conversation = Conversation.between(params[:sender_id], params[:receiver_id]).first
    else
      @conversation = Conversation.create!(conversation_params)
    end

    render json: @conversation, status: :ok
  end

  def update
    if @conversation.update(conversation_params)
      render json: @conversation
    else
      render json: @conversation.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conversation
      @conversation = Conversation.find(params[:id])
    end

    def conversation_params
      params.permit(:sender_id, :receiver_id)
    end

end
