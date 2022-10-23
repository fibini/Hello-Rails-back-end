module Api
  module V1
    class MessagesController < ApplicationController
      def index
        greetings = Message.find(rand(1..5))
        render json: { message: greetings.greeting }
      end
    end
  end
end
