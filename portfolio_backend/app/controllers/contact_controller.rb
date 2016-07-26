class ContactController < MailForm::Base
    def new
        @contact = Contact.new
    end

    def create
        @contact = Contact.new(params[:contact])
        @contact.request = request
        if @contact.valid?
            @contact.deliver
            # flash.now[:notice] = 'Thank you for your message. I will reply to you soon!'
        else
            flash.now[:error] = @contact.errors.full_messages
            render :new
        end
    end
end
