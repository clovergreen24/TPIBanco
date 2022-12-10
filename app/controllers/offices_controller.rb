class OfficesController < CrudController
    def create 
      
        @model = Office.new(name: model_params[:name], address: model_params[:address], phone: model_params[:phone], locality: get_locality, schedules_attributes: model_params[:schedules_attributes])
        byebug
        if @model.save 
          redirect_to @model, notice: "#{model_name} was successfully created"
        else
          render :new, status: :unprocessable_entity
        end
    end

    def update
      if @model.update(name: model_params[:name], address: model_params[:address], phone: model_params[:phone], locality: get_locality, schedules_attributes:  model_params[:schedules_attributes] )
        redirect_to @model, notice: "#{model_name} was successfully updated."
      else
          render :edit, status: :unprocessable_entity
      end
    end

    private 
    def model_params
      params.require(:office).permit(:name, :address, :phone, :locality, schedules_attributes: [ :day, :start_time, :end_time, :_destroy])
    end
  
    def get_model
        Office
    end
  
    def model_name
      "Office"
    end

    def get_locality
      Locality.find(model_params[:locality])
    end

  end
  