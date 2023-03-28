class ChatroomController < ApplicationController

    before_action :require_user, only: [:index]
    
    def index
        @messages = Message.all
    end

    def show
        @message = Message.new
        @messages = Message.all
    end

end