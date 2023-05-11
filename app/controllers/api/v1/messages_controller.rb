module Api
    module V1
      class MessagesController < ApplicationController
        def random
          message = Message.order("RANDOM()").first
          render json: { message: message.content }
        end
      end
    end
  end