class LocalitiesController < CrudController

  private 

  def model_params
    params.require(:locality).permit(:name, :province)
  end

  def get_model
      Locality
  end

  def model_name
    "locality"
  end
end
