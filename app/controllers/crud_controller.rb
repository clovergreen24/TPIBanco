class CrudController < ApplicationController
  before_action :set_model, only: %i[ show edit update destroy ]

  def index
    @model = get_model.all
  end

  def new
    @model = get_model.new
  end

  def edit; end

  def show; end

  def create
    @model = get_model.new(model_params)

    if @model.save
      redirect_to @model, notice: "#{model_name} was successfully created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @model.update(model_params)
      redirect_to @model, notice: "#{model_name} was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @model.destroy

    redirect_to get_model
  end

  private 

  def set_model
    @model = get_model.find(params[:id])
  end

  def get_model
    raise NotImplementedError
  end

end
