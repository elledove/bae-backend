class SessionsController < Devise::SessionsController
    respond_to :json



    private

    def repsond_with(resource,_opts = {})
        render json:resource
    end

    def respond_to_on_destroy
        head :no_content
      end
end