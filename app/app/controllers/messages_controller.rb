class MessagesController < ApplicationController
  before_action :authenticate_user!

  def index
    @messages = Message.all
  end

  def create
    @message = current_user.messages.new(message_params)
    @message.save
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
end
