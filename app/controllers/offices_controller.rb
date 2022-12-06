class OfficesController < CrudController

    private 
  
    def model_params
      params.require(:office).permit(:name, :address, :phone)
    end
  
    def get_model
        Office
    end
  
    def model_name
      "Office"
    end
  end
  