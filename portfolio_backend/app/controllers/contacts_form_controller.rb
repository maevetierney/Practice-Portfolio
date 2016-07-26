class ContactFormController < MailForm::Base
    def new
        @contact_form = ContactForm.new
    end

    def create
        @contact_form = ContactForm.new(params[:contact_form])
        @contact_form.request = request
        if @contact_form.valid?
            @contact_form.deliver
            flash.now[:notice] = 'Thank you for your message. I will reply to you soon!'
        else
            flash.now[:error] = @contact_form.errors.full_messages
            render :new
        end
    end
end
