class Api::V1::MessageController < ApplicationController
  def random
    message = Message.find(Message.pluck(:id).sample)
    render json: message, status: :ok
  end
end
