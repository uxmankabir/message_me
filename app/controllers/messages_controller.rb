class MessagesController < ApplicationController
  before_action :authenticate_user!

  def create
    message = current_user.messages.build(message_params)
    if message.save
      ActionCable.server.broadcast "chatroom_channel", message: render_message(message)
    end
    head :ok
  end

  private

  def message_params
    params.require(:message).permit(:text)
  end

  def render_message(message)
    render(partial: 'partials/message', locals: {message: message})
  end

end