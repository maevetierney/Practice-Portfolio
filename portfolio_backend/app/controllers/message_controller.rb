class MessageController < MailForm::Base
    def new
        @message = message.new
    end

    def create
        @message = Message.new(params[:message])
        @message.request = request
        if @message.valid?
            @message.deliver
            # flash.now[:notice] = 'Thank you for your message. I will reply to you soon!'
        else
            flash.now[:error] = @message.errors.full_messages
            render :new
        end
    end
end
