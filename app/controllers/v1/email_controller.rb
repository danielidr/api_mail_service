module V1
    class EmailController < V1Controller

        def send
            @emails = Email.all
            @emails.each do |email|
                if email.status == false
                    email.send_email
                end
            end
        end
    end
end