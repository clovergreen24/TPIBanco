class OfficesController < CrudController
    def create 
      locality = Locality.find(model_params[:locality])
      @model = Office.new(name: model_params[:name], address: model_params[:address], phone: model_params[:phone], 
        locality: locality)
      byebug
        if @model.save 
          redirect_to @model, notice: "#{model_name} was successfully created"
        else
          render :new, status: :unprocessable_entity
        end
    end

    def update
      locality = Locality.find(model_params[:locality])
      if @model.update(name: model_params[:name], address: model_params[:address], phone: model_params[:phone], locality: locality)
        redirect_to @model, notice: "#{model_name} was successfully updated."
      else
          render :edit, status: :unprocessable_entity
      end
    end

    private 
    def model_params
      params.require(:office).permit(:name, :address, :phone, :locality)
    end
  
    def get_model
        Office
    end
  
    def model_name
      "Office"
    end
  end
  