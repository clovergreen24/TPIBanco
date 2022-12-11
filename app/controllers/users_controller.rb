class UsersController < CrudController
  
  private 
  def model_params
    params.require(:user).permit(:username, :role, :password)
  end

  def get_model
    User
  end

  def model_name
    "user"
  end

  def get_clients
    @model = User.all
    clients = @model.collect { |user| [user.role==1] }
  end
end
