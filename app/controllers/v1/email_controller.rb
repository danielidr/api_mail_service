module V1
    class EmailController < V1Controller

        def send
            @emails = Email.where(status: false)
            @emails.each do |email|
                email.send_email
            end
        end
    end
end