class RegistrationsController < Devise::RegistrationsController
    repsond_to :json


    def create
        begin
            super
        rescue ActiveRecord::RecordInvalid => e 
            render_resource(e.record)
        
        rescue ActiveRecord::RecordNotUnique => e 
            err = OpenStruct.new(errors: {users: "Already Exists"})
            validation_error(err)
            
        end

    end

end
