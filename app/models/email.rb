class Email < ApplicationRecord
    validates :from, :to, presence: true

    require 'sendgrid-ruby'
    include SendGrid

    def send_email
        from = Email.new(email: self.from)
        to = Email.new(email: self.to)
        subject = self.subject
        content = Content.new(type: 'text/plain', value: self.content)
        mail = Mail.new(from, subject, to, content)    
        sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
        response = sg.client.mail._('send').post(request_body: mail.to_json)
        puts response.status_code
        puts response.body
        puts response.headers

        # Cambia status
        self.update(status: true)
    end
end
