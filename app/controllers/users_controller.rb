class UsersController < CrudController
  
  private 
  def model_params
    params.require(:user).permit(:username, :role)
  end

  def get_model
    User
  end

  def model_name
    "user"
  end
end
