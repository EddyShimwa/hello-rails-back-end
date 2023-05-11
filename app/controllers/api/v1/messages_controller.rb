module Api
  module V1
    class MessagesController < ApplicationController
      def index
        message = Message.order('RANDOM()').first
        render json: { message: message.content }
      end
    end
  end
end
