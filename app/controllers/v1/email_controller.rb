module V1
    class EmailController < V1Controller

        # before_action :set_email, only: %i[update]

        def index
            @emails = Email.all
            render json: @emails
        end

        # def send

        # end

        # def update
        #     if @email.update(email_params)
        #         render json: @email
        #     else
        #         render json: @email.errors
        #     end
        # end

        # private 

        #     def set_email
        #         @email = Email.find(params[:id])
        #     end
            
        #     def email_params
        #         params.require(:email).permit(:from, :to, :subject, :content, :status)
        #     end
    end
end