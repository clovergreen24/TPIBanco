class AppointmentsController < CrudController
  
    private 
    def model_params
      params.require(:appointment).permit(:datetime, :motive, :client, :employee, :office)
    end
  
    def get_model
      Appointment
    end
  
    def model_name
      "appointment"
    end

    def get_client
        User.find(model_params[:client])
        end
    
    def get_employee
        User.find(model_params[:employee])
    end

    def get_office
        Office.find(model_params[:office])
    end
  end
  