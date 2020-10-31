class ApplicationController < ActionController::API
    #repsond_to :json

    def render_resource(resource)
        if resource.errors.empty?
          render json: resource
        else
          validation_error(resource)
        end
      end
    
      def validation_error(resource)
        render json: {
          errors: [
            {
              status: '400',
              title: 'Bad Request',
              detail: resource.errors,
              code: '100'
            }
          ]
        }, status: :bad_request
      end


      def unauthorized_error
        render json: {error: "Not Authorized to make this request"}, status: 401
    end

    def not_found
      render json: {message: "Resource not found"}, status: 404
    end


    end

