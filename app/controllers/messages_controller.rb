class MessagesController < ApplicationController
  
  def create
    @message = Message.new(message_params)
    @chatroom = Chatroom.find(params[:chatroom_id])

    @message.chatroom = @chatroom
    @message.user = current_user
    if @message.save
      # Broadcast to all subscribers!
      ChatroomChannel.broadcast_to(
        @chatroom,
        render_to_string(partial: "message", locals: { message: @message })
      )
      redirect_to chatroom_path(@chatroom, anchor: "message-#{@message.id}")
    else
      render 'chatrooms/show'
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end