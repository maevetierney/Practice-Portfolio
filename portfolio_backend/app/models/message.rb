class Message < ApplicationRecord

     attribute :name,      :validate => true
     attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i

     attribute :body

     # Declare the e-mail headers. It accepts anything the mail method
     # in ActionMailer accepts.
     def headers
       {
         :subject => "Email From My Website Contact Form!!",
         :to => "maevet27@gmail.com",
         :from => %("#{name}" <#{email}>)
       }
     end

end
